# frozen_string_literal: true
# typed: true

require_relative('main')

describe 'Karaca Encryption Algorithm' do
  it 'should encrypt a string' do
    expect(encrypt("banana")).to eq("0n0n0baca")
    expect(encrypt("karaca")).to eq("0c0r0kaca")
    expect(encrypt("burak")).to eq("k0r3baca")
    expect(encrypt("alpaca")).to eq("0c0pl0aca")
  end
end
