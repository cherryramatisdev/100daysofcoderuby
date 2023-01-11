# typed: true

require_relative 'main'

describe 'Restore IP Address' do
  it 'should mount 2 possible ip addresses' do
    expect(restore_ip_addresses('25525511135')).to eq(['255.255.11.135', '255.255.111.35'])
    expect(restore_ip_addresses('010010')).to eq(['0.10.0.10', '0.100.1.0'])
  end

  it 'should mount 1 possible ip address' do
    expect(restore_ip_addresses('0000')).to eq(['0.0.0.0'])
    expect(restore_ip_addresses('1111')).to eq(['1.1.1.1'])
  end

  it 'should mount 5 possible ip addresses' do
    expect(restore_ip_addresses('101023')).to eq(['1.0.10.23', '1.0.102.3', '10.1.0.23', '10.10.2.3', '101.0.2.3'])
  end
end
