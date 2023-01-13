# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'Check if a number of groceries fit in N bags' do
  it 'should return true the groceries fit on the N bags provided' do
    expect(Bag::fit?([2, 1, 2, 5, 4, 3, 6, 1, 1, 9, 3, 2], 4)).to be_truthy()
  end

  it 'should return false if the groceries do not fit on the N bags provided' do
    expect(Bag::fit?([2, 7, 1, 3, 3, 4, 7, 4, 1, 8, 2], 4)).to be_falsy()
  end
end
