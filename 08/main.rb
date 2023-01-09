# typed: true

require 'sorbet-runtime'
extend T::Sig

DIGITS_TO_LETTERS = {
  1 => [''],
  2 => %w[a b c],
  3 => %w[d e f],
  4 => %w[g h i],
  5 => %w[j k l],
  6 => %w[m n o],
  7 => %w[p q r s],
  8 => %w[t u v],
  9 => %w[w x y z],
  0 => ['']
}

sig { params(digit: String).returns(T::Array[String]) }
def get_letters_combination_for_digits(digit)
  return DIGITS_TO_LETTERS[digit.to_i] if digit.length == 1 || digit.empty?

  combinations = digit.chars.map { |d| DIGITS_TO_LETTERS[d.to_i] }

  combinations.inject { |a, b| a.product(b).map(&:join) }
end

if __FILE__ == $0
  print 'Enter digits(based on phone keypad): '
  digits = gets.chomp
  puts "The letter combinations for this letters are: #{get_letters_combination_for_digits(digits)}"
end
