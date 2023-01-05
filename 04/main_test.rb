# typed: true

require_relative 'main'

describe 'Is Johnny Making Progress' do
  it 'should return two progress days' do
    expect(progressDays([3, 4, 1, 2])).to eq(2)
  end

  it 'should return three progress days' do
    expect(progressDays([10, 11, 12, 9, 10])).to eq(3)
  end

  it 'should return zero progress days' do
    expect(progressDays([9, 9])).to eq(0)
  end

  it 'should return one progress day' do
    expect(progressDays([6, 5, 4, 3, 2, 9])).to eq(1)
  end
end
