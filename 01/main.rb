def age_in_days(age)
  Integer(age) * 365
rescue ArgumentError
  raise ArgumentError, 'Invalid age'
  0
end

# Detect if it's running as script or as a module
if __FILE__ == $0
  print 'Enter your age: '
  age = gets.chomp

  puts "You are #{age_in_days(age)} days old."
end
