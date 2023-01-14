# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

extend T::Sig

VOWELS_TO_NUMBER = {
  'a' => 0,
  'e' => 1,
  'i' => 2,
  'o' => 2,
  'u' => 3,
}

sig { params(str: String).returns(String) }
def encrypt(str)
  str.reverse.gsub(/[aeiou]/, VOWELS_TO_NUMBER).concat('aca')
end

if __FILE__ == $0
  print 'Enter a string to encrypt: '
  str = gets.chomp
  puts "Encrypted string #{encrypt(str)}"
end
