# frozen_string_literal: true

def maximum(number, digit)
  positive_number = number.negative? ? (number * -1).to_s : number.to_s
  result = []

  (0..positive_number.length).each_with_index do |_, index|
    sub = ''
    sub += '-' if number.negative?

    (0..positive_number.length).each_with_index do |_, i|
      if result.length == i
        result.push(sub)
        result[i] += digit.to_s
        result[i] += positive_number[i..]
        result[i] = result[i].to_i
        break
      end

      unless result[index]
        sub += positive_number[i]
        next
      end
    end
  end

  result.min { |a, b| b <=> a }
end

if __FILE__ == $0
  print 'Insert a number: '
  number = gets.chomp.to_i

  print 'Insert a digit: '
  digit = gets.chomp.to_i

  puts "The maximum value is #{maximum(number, digit)}"
end
