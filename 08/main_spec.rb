# typed: true

require_relative 'main'

describe 'get letters combination for digits' do
  it 'should return empty array if digits is empty' do
    expect(get_letters_combination_for_digits('')).to eq([''])
  end

  it 'should return array of letters if digits is one' do
    expect(get_letters_combination_for_digits('2')).to eq(%w[a b c])
  end

  it 'should return the combination of letters if digits is more than one' do
    expect(get_letters_combination_for_digits('23')).to eq(%w[ad ae af bd be bf cd ce cf])
  end
end
