# frozen_string_literal: true

def min_turns(from, to)
  result = 0
  from = from.chars.map(&:to_i)
  to = to.chars.map(&:to_i)

  from.each_with_index do |digit, index|
    num_from = digit.zero? ? 10 : digit
    num_to = to[index].zero? ? 10 : to[index]
    result += [[num_from, num_to].max - [num_from, num_to].min,
               [num_from, num_to].min + 10 - [num_from, num_to].max].min
  end

  result
end

if __FILE__ == $0
  print 'Enter the first number: '
  from = gets.chomp

  print 'Enter the second number: '
  to = gets.chomp

  puts "The minimum number of turns is: #{min_turns(from, to).to_s}"
end
