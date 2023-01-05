require_relative 'main'

RSpec.describe 'Find vegetables and skewers' do
  it 'returns the number of vegetables and skewers' do
    expect(find_vegetables_and_skewers([
                                         '--oooo-ooo--',
                                         '--xx--x--xx--',
                                         '--o---o--oo--',
                                         '--xx--x--ox--',
                                         '--xx--x--ox--'
                                       ])).to eq([2, 3])

    expect(find_vegetables_and_skewers([
                                         '--oooo-ooo--',
                                         '--xxxxxxxx--',
                                         '--o---',
                                         '-o-----o---x--',
                                         '--o---o-----'
                                       ])).to eq([3, 2])
  end
end
