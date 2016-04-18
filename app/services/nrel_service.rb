require 'json'

class NrelService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(:url => 'https://api.data.gov')
  end

  def find_by_zip(token, zip)
    c = connection.get '/nrel/alt-fuel-stations/v1/nearest.json', { api_key: token, location: zip, fuel_type: "CNG, ELEC" }
    j = JSON.parse(c.env["body"])
    require "pry"; binding.pry
  end
end
