require_relative 'main'

RSpec.describe 'Calculate age into days' do
  it 'should return 23725 days for age 65' do
    expect(age_in_days('65')).to eq(23_725)
  end

  it 'should return 7300 days for age 20' do
    expect(age_in_days('20')).to eq(7300)
  end

  it 'should return 0 days for age 0' do
    expect(age_in_days('0')).to eq(0)
  end

  it 'should throw an error for negative age' do
    expect { age_in_days('teste') }.to raise_error(ArgumentError)
  end
end
