# typed: strict

require 'sorbet-runtime'
extend T::Sig

sig { params(age: String).returns(Integer) }
def age_in_days(age)
  Integer(age) * 365
rescue ArgumentError
  0
  raise ArgumentError, 'Invalid age'
end

# Detect if it's running as script or as a module
if __FILE__ == $0
  print 'Enter your age: '
  age = gets.chomp

  puts "You are #{age_in_days(age)} days old."
end
