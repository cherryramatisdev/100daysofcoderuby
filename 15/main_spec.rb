# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'Discover anagrams' do
  it 'should return true for anagrams' do
    expect('anagram'.anagram?('nagaram')).to eq(true)
  end

  it 'should return false for not anagrams' do
    expect('rat'.anagram?('car')).to eq(false)
  end
end
