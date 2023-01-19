# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'
require 'uri'

# MiniDatabase should be minimal
class MiniDatabase
  extend T::Sig

  sig { params(path: String).void }
  def initialize(path:)
    @file = T.let(File.new(path, 'a+'), File)
  end

  sig { params(content: String).void }
  def insert(content)
    @file.puts(content)

    @file.close
  end

  sig { params(content: String).returns(T::Boolean) }
  def exists?(content)
    return false if content.empty? || content.nil?

    !File.readlines(@file.path).select { |d| d.include?(content) }.empty?
  end

  sig { params(content: String).returns(String) }
  def get(content)
    founded = File.readlines(@file.path).grep(/#{content}/)

    return '' if founded.empty?

    T.must(founded.first)
  end
end

# Shortener should short
class Shortener
  extend T::Sig

  def initialize
    @mini_db = MiniDatabase.new(path: '19/db.txt')
  end

  sig { params(url: String).returns(String) }
  def encode(url)
    return 'invalid URL' unless valid_url?(url)

    id = generate_random_string

    pattern = "#{url}->#{id}"
    @mini_db.insert(pattern) unless @mini_db.exists?(pattern)

    "https://cherry.ra/#{id}"
  end

  sig { params(encoded_url: String).returns(String) }
  def decode(encoded_url)
    id = encoded_url.gsub('https://', '').split('/')[1] || ''

    return 'URL not found' unless @mini_db.exists?(id)

    @mini_db.get(id).split('->')[0]
  end

  private

  sig { returns(String) }
  def generate_random_string
    random_string = ''

    9.times do |_i|
      random_string += "a#{rand(26)}"
    end

    random_string
  end

  sig { params(url: String).returns(T::Boolean) }
  def valid_url?(url)
    !URI.parse(url).host.nil?
  end
end

if __FILE__ == $PROGRAM_NAME
  shortener = Shortener.new
  print 'Enter a valid url: '
  url = gets.chomp
  encoded = shortener.encode(url)
  decoded = shortener.decode(encoded)
  puts "Encoded: #{encoded}"
  puts "Decoded: #{decoded}"
end
