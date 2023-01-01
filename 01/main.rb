def age_in_days(age)
  age * 365
end

# Detect if it's running as script or as a module
if __FILE__ == $0
  print 'Enter your age: '
  age = gets.chomp.to_i

  puts "You are #{age_in_days(age)} days old."
end
