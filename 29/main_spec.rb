# frozen_string_literal: true

require_relative 'main'

describe 'Validate traffic lights' do
  it 'should accept an correct sequence' do
    expect(traffic_lights('R G Y R C R G Y R')).to eq 'ACCEPT!'
  end

  it 'should reject an incorrect sequence' do
    expect(traffic_lights('G Y R G Y R')).to eq 'REJECT!'
    expect(traffic_lights('R Y G P')).to eq 'REJECT!'
  end

  it 'should throw error on an malformed sequence' do
    expect(traffic_lights('R G Y')).to eq('ERROR!')
    expect(traffic_lights('X 8 S')).to eq('ERROR!')
    expect(traffic_lights('R G Y R C R P R G Y R G Y R G Y R')).to eq('ERROR!')
  end
end
