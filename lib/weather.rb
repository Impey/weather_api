require_relative 'services/Currentweather'
require_relative 'services/Forecast'

class Weather
 
  def current_weather
    Currentweather.new
  end

  def forecast
    Forecast.new
  end

end 