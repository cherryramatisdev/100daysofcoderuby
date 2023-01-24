# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'Calculate footbal field' do
  let(:field) { Field.new }

  it 'should calculate 100k as fields' do
    expect(field.calculate(1_034_000.00)).to eq(144.818)
  end

  it 'should calculate 200k as fields' do
    expect(field.calculate(2_034_000.00)).to eq(284.874)
  end

  it 'should calculate 4k as fields' do
    expect(field.calculate(34_000.00)).to eq(4.762)
  end
end
