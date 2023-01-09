# typed: true

require_relative 'main'

describe 'calculate trapped water' do
  it 'returns 0 for empty array' do
    expect(calculate_trapped_water([])).to eq(0)
  end

  it 'returns value for filled array' do
    expect(calculate_trapped_water([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])).to eq(6)
    expect(calculate_trapped_water([4, 2, 0, 3, 2, 5])).to eq(9)
  end
end
