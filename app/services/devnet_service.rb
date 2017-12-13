require 'station'

class DevnetService 

  def self.get_stations(location)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&limit=10&location=#{location}&radius=6.0&api_key=RcMCcV7bXdBRp4r5Vgh4FZR5jvwGqBJgPgfG9rQN&format=JSON")
    parsed_stations = JSON.parse(response.body)["fuel_stations"]#this returns a blob of JSON. 
    make_stations(parsed_stations) 
  end 

  def self.make_stations(parsed_stations)
    @stations = parsed_stations.map do |station|
      Station.new(station)
    end 
  end 
end 
