require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load('.env')


class Currentweather

  include HTTParty
  
  base_uri 'https://api.openweathermap.org'
  
  def getdata(city)
    @currentweather = JSON.parse(self.class.get("/data/2.5/weather?q=#{city},uk&appid=#{ENV['API_KEY']}").body)
  
  end
  def

  def print_results
    getdata
   p @currentweather
  end

  def get_coord
    @currentweather['coord']
  end

  def get_lon 
   get_coord['lon']
  end

  def get_lat
    get_coord['lat']
  end

  def get_weather
    @currentweather['weather'][0]
  end

  def get_id
    get_weather['id']
  end

  def get_main
   get_weather['main']
  end

  def get_description
   get_weather['description']
  end

  def get_icon
    get_weather['icon']
   end

   def get_base
    @currentweather['base'] 
   end

   def get_main_hash
    @currentweather['main']
   end

   def get_temp 
    get_main_hash['temp']
   end

   def get_pressure
    get_main_hash['pressure']
   end

   def get_humidity
     get_main_hash['humidity']
   end

   def get_temp_min
    get_main_hash['temp_min']   
   end


   def get_temp_max
    get_main_hash['temp_max']   
   end

   def get_visibility
    @currentweather['visibility']
   end
   def get_wind 
    @currentweather['wind']
   end

   def get_speed
    get_wind['speed']
   end

   def get_deg
    get_wind['deg']
   end

   def get_clouds
    @currentweather['clouds']
   end

   def get_all
    get_clouds['all']
   end

   def get_dt 
    @currentweather['dt']
   end

   def get_sys
    @currentweather['sys']
   end

   def get_type 
    get_sys['type']
   end

   def get_sys_id
    get_sys['id']
   end

   def get_sys_message
    get_sys['message']
   end

   def get_sys_country
    get_sys['country']
   end

   def get_sys_sunrise
    get_sys['sunrise']
   end

   def get_sys_sunset
    get_sys['sunset']
   end

   def get_coord_id
    @currentweather['id']
   end

   def get_name
    @currentweather['name']
   end

   def get_cod
    @currentweather['cod']
   end

   


 
end

