require_relative 'main'

RSpec.describe('Find pair of socks') do
  it 'should return 1 pair of socks' do
    expect(sockPairs('AA')).to eq(1)
  end

  it 'should return 2 pairs of socks' do
    expect(sockPairs('ABABC')).to eq(2)
  end

  it 'should return 4 pairs of socks' do
    expect(sockPairs('CABBACCC')).to eq(4)
  end
end
