# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(x_axis: Integer, y_axis: Integer).returns(Integer) }
def unique_paths(x_axis, y_axis)
  result = T.let(Array.new(x_axis).map { 0 }, T::Array[Integer])
  result[T.must(result.length - 1)] = 1

  (y_axis - 1).downto(0).each do
    (x_axis - 1).downto(0).each do |col|
      result[col] = T.must(result[col]) + result.fetch(col + 1, 0)
    end
  end

  T.must(result[0])
end

if __FILE__ == $PROGRAM_NAME
  print 'Enter x axis: '
  x_axis = gets.chomp.to_i
  print 'Enter y axis: '
  y_axis = gets.chomp.to_i
  puts "Unique paths: #{unique_paths(x_axis, y_axis)}"
end
