require 'httparty'
require 'json'


class Currentweather

  include HTTParty
  # 84fd4dd594e65a1240f547b1a0a90188
  base_uri 'https://api.openweathermap.org'
  
  def getdata
    JSON.parse(self.class.get("/data/2.5/weather?q=London,uk&).body)
  
  end

  def print_results
    getdata
   p @currentweather
  end

  def get_coord
    getdata['coord']
  end

  def get_lon 
   get_coord['lon']
  end

  def get_lat
    get_coord['lat']
  end

  def get_weather
    getdata['weather']
  end

  def get_id
    get_weather[0]['id']
  end



 
end

