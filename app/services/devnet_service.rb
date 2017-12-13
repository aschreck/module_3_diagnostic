require 'stations'

class DevnetService 

  def get_stations(location)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&limit=10&location=#{params[:q]}&radius=6.0&api_key=RcMCcV7bXdBRp4r5Vgh4FZR5jvwGqBJgPgfG9rQN&format=JSON")
    stations = JSON.parse(response.body)["fuel_stations"]#this returns a blob of JSON. 
    
  end 

end 
