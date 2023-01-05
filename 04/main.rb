# typed: strict

require 'sorbet-runtime'
extend T::Sig

sig { params(miles_per_day: T::Array[Integer]).returns(Integer) }
def progressDays(miles_per_day)
  miles_per_day.each_cons(2).count { |a, b| T.must(a) < T.must(b) }
end

if __FILE__ == $0
  print 'Enter the number of miles per day separated by space: '
  miles_per_day = gets.chomp.split(' ').map(&:to_i)
  puts "Progress days: #{progressDays(miles_per_day)}"
end
