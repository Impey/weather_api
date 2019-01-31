require 'spec_helper'


describe Weather do 
  context 'testing the forecast api call' do 

  before(:all) do 
    @forecast = Weather.new.forecast
    @forecast.getdata('London')
  end
  
   it 'should return list and an array' do 
    expect(@forecast.get_list).to be_kind_of(Array)
   end

   it 'should return dt as integer' do 
    @forecast.get_dt.each do |dt|
      expect(dt).to be_kind_of(Integer)
    end
  end

  it 'should return temp as a float' do
    @forecast.get_temp.each do |temp|
      expect(temp).to be_kind_of(Float)
    end
   end


   it 'should return temp_min as a float' do
    @forecast.get_temp_min.each do |temp_min|
      expect(temp_min).to be_kind_of(Float)
    end
   end

   it 'should return temp_min as a float' do
    @forecast.get_temp_max.each do |temp_max|
      expect(temp_max).to be_kind_of(Float)
    end
   end


   it 'should return pressure as a float or integer' do
    @forecast.get_pressure.each do |pressure|
      expect(pressure).to be_kind_of(Integer) |   be_kind_of(Float)
    end
   end


   it 'should return sea level as a float or integer' do
    @forecast.get_sea_level.each do |sea|
      expect(sea).to be_kind_of(Float) | be_kind_of(Integer) 
    end
   end


   it 'should return ground level as a float or integer' do
    @forecast.get_grnd_level.each do |grnd_level|
      expect(grnd_level).to be_kind_of(Float) |
       be_kind_of(Integer)
    end
   end


   it 'should return humidity as a float or integer' do
    @forecast.get_humidity.each do |humidity|
      expect(humidity).to be_kind_of(Float) |
       be_kind_of(Integer)
    end
   end

   it 'should return temp_kd as a float or integer' do
    @forecast.get_temp_kf.each do |temp_kf|
      expect(temp_kf).to be_kind_of(Float) |
       be_kind_of(Integer)
    end
   end




   




  
  
  
  end
end

