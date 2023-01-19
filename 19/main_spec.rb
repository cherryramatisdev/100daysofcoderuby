# frozen_string_literal: true
# typed: true

require_relative 'main'

describe 'URL shortener' do
  it 'given valid long url' do
    shortener = Shortener.new
    long_url = 'https://github.com/cherryramatisdev/100daysofcoderuby'

    encoded = shortener.encode(long_url)

    decoded = shortener.decode(encoded)

    expect(encoded).not_to eq('invalid URL')
    expect(decoded).to eq(long_url)
  end

  it 'given a complex url' do
    shortener = Shortener.new
    complex_url = 'https://www.uol.com.br/esporte/colunas/pole-position/2020/11/30/pietro-fittipaldi-e-confirmado-como-substituto-de-grosjean-no-gp-de-sakhir.htm'

    encoded = shortener.encode(complex_url)
    decoded = shortener.decode(encoded)

    expect(encoded).not_to eq('invalid URL')
    expect(decoded).to eq(complex_url)
  end

  it 'given a complex url' do
    shortener = Shortener.new
    complex_url = 'https://www.youtube.com/watch?v=0ZZTP_hoMPw&t=10540s&ab_channel=10HoursMovies'

    encoded = shortener.encode(complex_url)
    decoded = shortener.decode(encoded)

    expect(encoded).not_to eq('invalid URL')
    expect(decoded).to eq(complex_url)
  end

  it 'given a invalid url' do
    shortener = Shortener.new
    invalid_url = 'https:/www.uol.com.br'

    encoded = shortener.encode(invalid_url)

    decoded = shortener.decode(encoded)

    expect(encoded).to eq('invalid URL')
    expect(decoded).to eq('URL not found')
  end
end
