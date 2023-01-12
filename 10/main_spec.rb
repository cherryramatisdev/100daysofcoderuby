# typed: true

require_relative 'main'

describe 'Binary tree' do
  it 'should be able to create 5 unique binary tree between 1 to the given number' do
    expect(binary_tree(3)).to eq(5)
  end
end
