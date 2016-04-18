require 'json'

class NrelService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/v1')
  end

  def find_by_zip(token, zip)
    c = connection.get '/nearest.json', { api_key: token, location: zip }
    j = JSON.parse(c.env["body"])
    require "pry"; binding.pry
  end
end
