# frozen_string_literal: true

def josephus(number_of_soldiers, interval_to_be_killed)
  circle = (1..number_of_soldiers).to_a.fill(nil).each_with_index.map { |_, index| index + 1 }

  i = 0

  while circle.length > 1
    i = (i + interval_to_be_killed - 1) % circle.length
    circle.slice!(i, 1)
  end

  circle.first
end

if __FILE__ == $0
  print 'Enter the number of soldiers: '
  number_of_soldiers = gets.chomp.to_i

  print 'Enter the interval for those to be killed: '
  interval_to_be_killed = gets.chomp.to_i

  puts "The soldier at the position #{josephus(number_of_soldiers, interval_to_be_killed)} should survive"
end
