# frozen_string_literal: true

require_relative 'main'

describe 'Count carry operations' do
  it 'should return 3' do
    expect(count_carry(555, 555)).to eq 3
    expect(count_carry(555, 545)).to eq 3
  end

  it 'should return 1' do
    expect(count_carry(123, 594)).to eq 1
  end

  it 'should return 0' do
    expect(count_carry(123, 456)).to eq 0
    expect(count_carry(1, 20_000)).to eq 0
    expect(count_carry(1, 2)).to eq 0
  end
end
