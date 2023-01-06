# typed: true

require_relative 'main'

describe 'find prime number' do
  it 'the next prime number should be 13' do
    expect(nextPrime(12)).to eq(13)
  end

  it 'the next prime number should be 29' do
    expect(nextPrime(24)).to eq(29)
  end

  it 'if its already prime, return itself' do
    expect(nextPrime(11)).to eq(11)
  end
end
