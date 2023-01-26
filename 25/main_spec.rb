# frozen_string_literal: true

require_relative 'main'

describe 'Coin problem' do
  it 'should divide equally amont three children' do
    expect(coins_div([1, 2, 3, 2, 2, 2, 3])).to eq true
    expect(coins_div([2, 4, 3, 2, 4, 9, 7, 8, 6, 9])).to eq true
  end

  it 'should not divide equally amont three children' do
    expect(coins_div([5, 3, 10, 1, 2])).to eq false
  end
end
