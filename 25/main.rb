# frozen_string_literal: true

# @param {Integer[]} coins
def coins_div(coins)
  coins_per_children = coins.sum / 3

  new_arr = []

  coins.each_with_index do |coin, index|
    break if coin.nil?

    new_arr << [coin, coins[index + 1]] if coin + coins[index + 1] < 5
  end

  p new_arr
end
