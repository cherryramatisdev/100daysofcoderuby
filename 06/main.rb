# typed: true

require 'sorbet-runtime'
require 'prime'

extend T::Sig

sig { params(number: Integer).returns(Integer) }
def nextPrime(number)
  number += 1 until number.prime?

  number
end

if __FILE__ == $0
  print 'Enter a number: '
  number = gets.chomp.to_i
  puts "Next prime number is #{nextPrime(number)}"
end
