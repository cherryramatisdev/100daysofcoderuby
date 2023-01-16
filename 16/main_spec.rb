# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'Check who would will in a nim game' do
  it 'should return false proving the you cant win the match' do
    expect(nim_game(4)).to eq(false)
  end

  it 'should return true proving the you can win the match' do
    expect(nim_game(1)).to eq(true)
    expect(nim_game(2)).to eq(true)
  end
end
