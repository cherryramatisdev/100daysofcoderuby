# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'Prison break' do
  it 'should be able to escape' do
    expect(freed_prisoners([1, 1, 0, 0, 0, 1, 0])).to eq(4)

    expect(freed_prisoners([1, 1, 1])).to eq(1)
  end

  it 'should not be able to escape' do
    expect(freed_prisoners([0, 0, 0])).to eq(0)

    expect(freed_prisoners([0, 1, 1, 1])).to eq(0)
  end
end
