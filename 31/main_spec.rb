# frozen_string_literal: true

require_relative 'main'

describe 'Time in words' do
  it 'should return thirteen minutes to six' do
    expect(Time.humanize(5, 47)).to eq 'thirteen minutes to six'
  end

  it "should return three o' clock" do
    expect(Time.humanize(3, 0o0)).to eq "three o' clock"
  end

  it 'should return quarter past seven' do
    expect(Time.humanize(7, 15)).to eq 'quarter past seven'
  end

  it 'should return half past five' do
    expect(Time.humanize(5, 30)).to eq 'half past five'
  end

  it 'should return one minute past five' do
    expect(Time.humanize(5, 0o1)).to eq 'one minute past five'
  end
end
