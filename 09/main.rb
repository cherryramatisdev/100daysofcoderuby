# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(heights: T::Array[Integer]).returns(Integer) }
def calculate_trapped_water(heights)
  return 0 if heights.empty?

  leftIndex = 0
  rightIndex = heights.size - 1
  leftTop = T.let(0, T.nilable(Integer))
  rightTop = T.let(0, T.nilable(Integer))

  totalWater = 0

  while leftIndex <= rightIndex
    leftTop = [leftTop, heights[leftIndex]].max
    rightTop = [rightTop, heights[rightIndex]].max

    return totalWater if leftTop.nil? || rightTop.nil?

    if leftTop < rightTop
      totalWater += leftTop - T.must(heights[T.must(leftIndex)])
      leftIndex += 1
    else
      totalWater += rightTop - T.must(heights[rightIndex])
      rightIndex -= 1
    end
  end

  totalWater
end

if __FILE__ == $0
  print 'Enter heights: '
  heights = gets.chomp.split.map(&:to_i)
  puts "Total water trapped: #{calculate_trapped_water(heights)}"
end
