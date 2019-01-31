require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load('.env')


class Forecast
  include HTTParty
  
  base_uri 'https://api.openweathermap.org'
  
  def getdata(city)
    @forecast = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city},uk&appid=#{ENV['API_KEY']}").body)
  
  end

  def print_results
    getdata
   p @forecast
  end


  def get_list
    @forecast['list']
  end


  def get_dt 
    array =[]
    get_list.each do |dt|
      array << dt['dt']
    end
    array
  end

  def get_temp
    array = []
    get_list.each do |value|
      array << value['main']['temp']
    end 
    array
  end

  def get_temp_min
    array = []
    get_list.each do |value|
      array << value['main']['temp_min']
    end 
    array
  end

  def get_temp_max
    array = []
    get_list.each do |value|
      array << value['main']['temp_max']
    end 
    array
  end


  def get_pressure
    array = []
    get_list.each do |value|
      array << value['main']['pressure']
    end 
    array
  end

  def get_sea_level
    array = []
    get_list.each do |value|
      array << value['main']['sea_level']
    end 
    array
  end

  def get_grnd_level
    array = []
    get_list.each do |value|
      array << value['main']['grnd_level']
    end 
    array
  end

  def get_humidity
    array = []
    get_list.each do |value|
      array << value['main']['humidity']
    end 
    array
  end

  def get_temp_kf
    array = []
    get_list.each do |value|
      array << value['main']['temp_kf']
    end 
    array
  end


  


 
end




