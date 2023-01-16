# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(num_of_stones: Integer).returns(T::Boolean) }
def nim_game(num_of_stones)
  num_of_stones % 4 != 0
end

if __FILE__ == $0
  print 'Enter the number of stones: '
  num_of_stones = gets.chomp.to_i
  puts "You can win the match: #{nim_game(num_of_stones) ? 'yes' : 'no'}"
end
