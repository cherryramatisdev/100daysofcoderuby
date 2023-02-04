# frozen_string_literal: true

def count_carry(first_num, second_num)
  carry = 0
  count = 0

  while first_num.positive? || second_num.positive?
    carry = ((carry + first_num % 10 + second_num % 10) / 10).floor
    count += carry
    first_num = (first_num / 10).floor
    second_num = (second_num / 10).floor
  end

  count
end

if __FILE__ == $0
  print 'Enter first number: '
  first_num = gets.chomp.to_i

  print 'Enter second number: '
  second_num = gets.chomp.to_i

  puts "Result: #{count_carry(first_num, second_num)}"
end
