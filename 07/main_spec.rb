# typed: true

require_relative 'main'

describe 'merge arrays and sort' do
  it 'should merge and sort' do
    first_arr = [1, 2, 3, 0, 0, 0]
    second_arr = [2, 5, 6]
    expect(merge(first_arr, second_arr)).to eq([1, 2, 2, 3, 5, 6])
  end
end
