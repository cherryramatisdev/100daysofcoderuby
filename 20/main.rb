# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'
require 'faraday'
require 'json'
require 'sinatra'

# LocationService...
class LocationService
  extend T::Sig

  def initialize
    @conn = Faraday.new
  end

  sig { params(query: String, lat: Float, lng: Float).returns(T.untyped) }
  def search(query, lat, lng)
    response = @conn.get("https://nominatim.openstreetmap.org/search/#{query}?format=json")
    body = JSON.parse(response.body)

    unless lat.zero? || lng.zero?
      body = body.select do |location|
        location['lat'].to_f.round(2) == lat.round(2) && location['lon'].to_f.round(2) == lng.round(2)
      end
    end

    body.map do |location|
      { 'name' => location['display_name'], 'lat' => location['lat'], 'lon' => location['lon'] }
    end
  end
end

get '/suggestions' do
  loca = LocationService.new

  content_type :json
  query = params[:q]
  lat = params[:lat].to_f
  lng = params[:lng].to_f

  loca.search(query, lat, lng).to_json
end
