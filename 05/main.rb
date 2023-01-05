# typed: strict

require 'sorbet-runtime'
extend T::Sig

sig { params(socks: String).returns(Integer) }
def sockPairs(socks)
  chars = socks.chars
  return 0 if chars.empty?

  chars.group_by(&:itself).values.map(&:size).map { |n| n / 2 }.sum
end

if __FILE__ == $0
  print 'Enter one char representing an sock that is in your pile: '
  socks = gets.chomp

  puts "You can make #{sockPairs(socks)} pairs of socks"
end
