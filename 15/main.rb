# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

class String
  extend T::Sig

  sig { params(target: String).returns(T::Boolean) }
  def anagram?(target)
    return false if length.nil? || length != target.length

    chars.sort == target.chars.sort
  end
end

if __FILE__ == $0
  print 'Enter a word: '
  first_word = gets.chomp
  print 'Enter what you think its is anagram: '
  second_word = gets.chomp

  puts "#{first_word} is an anagram of #{second_word}? #{first_word.anagram?(second_word) ? 'yes' : 'no'}"
end
