# frozen_string_literal: true

require_relative 'main'

describe 'Briefcase Lock' do
  it 'should return 9 for minimum number of turns to transform between 4089 and 5672' do
    expect(min_turns('4089', '5672')).to eq 9
  end

  it 'should return 9 for minimum number of turns to transform between 4089 and 5672' do
    expect(min_turns('1111', '1100')).to eq 2
  end

  it 'should return 9 for minimum number of turns to transform between 4089 and 5672' do
    expect(min_turns('2391', '4984')).to eq 10
  end
end
