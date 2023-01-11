# typed: true

require 'sorbet-runtime'

extend T::Sig

# max value will define an range between 1..max_value and we need to use
# it to create unique binaries trees
sig { params(max_value: Integer).returns(Integer) }
def binary_tree(max_value)
  return 1 if [1, 0].include?(max_value)

  count = 0

  (1..max_value).each { |i| count += binary_tree(i - 1) * binary_tree(max_value - i) }

  count
end

if __FILE__ == $0
  print 'Enter max value to create unique binaries trees from: '
  max_value = gets.chomp.to_i
  puts "Number of unique binary trees: #{binary_tree(max_value)}"
end
