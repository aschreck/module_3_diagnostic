class Station 

  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(info)
    @name = info["station_name"]
    @address = info["street_address"]
    @fuel_type = info["fuel_type_code"]
    @distance= info["distance"]
    @access_times = info["access_days_time"]
  end 

end 