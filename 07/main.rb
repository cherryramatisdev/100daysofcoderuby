# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(arr1: T::Array[Integer], arr2: T::Array[Integer]).returns(T::Array[Integer]) }
def merge(arr1, arr2)
  raise 'First array should be greater than second array' if arr1.length < arr2.length

  (arr1 + arr2).sort.reject(&:zero?)
end

if __FILE__ == $0
  print 'Enter first array of numbers(separated by space): '
  arr1 = gets.chomp.split.map(&:to_i)
  print 'Enter second array of numbers(separated by space): '
  arr2 = gets.chomp.split.map(&:to_i)
  puts "Merged array: #{merge(arr1, arr2)}"
end
