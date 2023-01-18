# frozen_string_literal: true
# typed: true

require_relative('main')

describe 'Unique paths' do
  it 'return 28 unique paths' do
    expect(unique_paths(3, 7)).to eq(28)
    expect(unique_paths(7, 3)).to eq(28)
  end

  it 'return 3 unique paths' do
    expect(unique_paths(3, 2)).to eq(3)
  end

  it 'return 6 unique paths' do
    expect(unique_paths(3, 2)).to eq(3)
  end
end
