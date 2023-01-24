# frozen_string_literal: true

require_relative 'main'

describe 'Solve Josephus problem' do
  it 'the soldier at the position 31 should survive' do
    expect(josephus(41, 3)).to eq 31
  end

  it 'the soldier at the position 18 should survive' do
    expect(josephus(35, 11)).to eq 18
  end

  it 'the soldier at the position 11 should survive' do
    expect(josephus(11, 1)).to eq 11
  end

  it 'the soldier at the position 1 should survive' do
    expect(josephus(2, 2)).to eq 1
  end
end
