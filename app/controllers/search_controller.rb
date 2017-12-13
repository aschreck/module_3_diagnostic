class SearchController < ApplicationController

  def index
    #an array of station objects needs to come out of here. 
    #I have the zip code
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&limit=10&location=#{params[:q]}&radius=6.0&api_key=RcMCcV7bXdBRp4r5Vgh4FZR5jvwGqBJgPgfG9rQN&format=JSON")
    stations = JSON.parse(response.body)["fuel_stations"]#this returns a blob of JSON. 

    @stations = stations.map do |station|
      Station.new(station)
    end 
  end 
end 