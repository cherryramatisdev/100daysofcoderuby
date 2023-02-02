# frozen_string_literal: true

require_relative 'main'

describe 'Keyboard mistake fix' do
  it 'should return proper string' do
    expect(keyboard_mistake_fix('O S, GOMR YPFSU/')).to eq 'I AM FINE TODAY.'
  end
end
