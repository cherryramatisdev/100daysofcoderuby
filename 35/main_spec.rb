# frozen_string_literal: true

require_relative 'main'

describe 'Find the gopher a safe route' do
  it 'given a valid file, should analyze the escape plan' do
    expect(gopher_escape_plan('./assets/1_valid.txt')).to eq ['The gopher cannot escape.',
                                                              'The gopher can escape through the hole at (2.500000,2.500000).']
    expect(gopher_escape_plan('./assets/2_valid.txt')).to eq ['The gopher cannot escape.',
                                                              'The gopher can escape through the hole at (2.500000,2.500000).']
  end

  it 'given a invalid file, should return error message' do
    expect(gopher_escape_plan('./assets/3_invalid.txt')).to eq ['BAD FILE!']
    expect(gopher_escape_plan('./assets/4_invalid.txt')).to eq ['BAD FILE!']
    expect(gopher_escape_plan('./assets/5_invalid.txt')).to eq ['BAD FILE!']
  end
end
