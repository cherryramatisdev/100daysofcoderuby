# frozen_string_literal: true

require_relative 'main'

describe 'Find the maximum value' do
  it 'should find the maximum value' do
    expect(maximum(276, 3)).to eq 3276
    expect(maximum(-999, 4)).to eq(-4999)
    expect(maximum(0, 3)).to eq 30
    expect(maximum(860, 7)).to eq 8760
  end
end
