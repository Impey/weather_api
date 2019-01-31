require 'httparty'
require 'json'


class Forecast
  include HTTParty
  # 84fd4dd594e65a1240f547b1a0a90188
  base_uri 'https://api.openweathermap.org'
  
  def getdata
    @forecast = JSON.parse(self.class.get("/data/2.5/forecast?q=London,").body)
  
  end

  def print_results
    getdata
   p @forecast
  end
 
end

