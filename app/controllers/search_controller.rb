
class SearchController < ApplicationController

  def index
    @stations = DevnetService.get_nearby_stations(params[:q])
  end 
end 