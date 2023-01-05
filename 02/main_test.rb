# typed: true

require_relative 'main'

describe 'Finding Nemo' do
  it 'finds nemo at the end of the phrase' do
    expect(findNemo('I am finding Nemo !')).to eq('I found Nemo at 4!')
  end

  it 'finds nemo at the beginning of the phrase' do
    expect(findNemo('Nemo is me')).to eq('I found Nemo at 1!')
  end

  it 'finds nemo in the middle of the phrase' do
    expect(findNemo('I Nemo am')).to eq('I found Nemo at 2!')
  end

  it 'cant find nemo\'s with apostrophes' do
    expect(findNemo("Dont find Nemo's")).to eq("I can't find Nemo :(")
  end

  it 'if multiple nemos is found, return the first one' do
    expect(findNemo('Nemo is me Nemo')).to eq('I found Nemo at 1!')
  end
end
