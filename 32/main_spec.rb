# frozen_string_literal: true

require_relative 'main'

describe 'Calculate player rank on each score' do
  it 'should return 4,3,1 as rank on each score' do
    expect(player_rank([100, 90, 90, 80], [70, 80, 105])).to eq [4, 3, 1]
  end

  it 'should return 1,1,1 as rank on each score' do
    expect(player_rank([100, 90, 90, 80], [106, 107, 105])).to eq [1, 1, 1]
  end
end
