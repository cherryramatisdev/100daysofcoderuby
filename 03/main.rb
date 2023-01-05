# typed: strict

require 'sorbet-runtime'

extend T::Sig

sig { params(barb_arr: T::Array[String]).returns(T::Array[Integer]) }
def find_vegetables_and_skewers(barb_arr)
  vegetables = barb_arr.select { |item| item.include?('o') && !item.include?('x') }.count
  skewers = barb_arr.select { |item| item.include?('x') }.count

  [vegetables, skewers]
end

if __FILE__ == $0
  barb_arr = [
    '--oooo-ooo--',
    '--xx--x--xx--',
    '--o---o--oo--',
    '--xx--x--ox--',
    '--xx--x--ox--'
  ]

  puts "Barbeque: #{barb_arr}"
  puts "Vegetables: #{find_vegetables_and_skewers(barb_arr)[0]}"
  puts "Skewers: #{find_vegetables_and_skewers(barb_arr)[1]}"
end
