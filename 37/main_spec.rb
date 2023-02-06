# frozen_string_literal: true

require_relative 'main'

describe 'Breaking the records' do
  it 'should return an array with [2,4]' do
    expect(breaking_records([10, 5, 20, 20, 4, 5, 2, 25, 1])).to eq [2, 4]
  end
end
