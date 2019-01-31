require 'spec_helper'

describe Weather do 
 context 'requesting information for current weather location' do
 
  before(:all) do 
    @weatherapi = Weather.new.current_weather
    @weatherapi.getdata('London')
  end

  it 'should return a hash' do 
    expect(@weatherapi.get_coord).to be_kind_of(Hash)
  end

  it 'should return lon as a float' do 
    expect(@weatherapi.get_lon).to be_kind_of(Float)
  end

  it 'should return lat as a float' do 
    expect(@weatherapi.get_lat).to be_kind_of(Float)
  end

 

 it 'should return the id as an integer' do 
  expect(@weatherapi.get_id).to be_kind_of(Integer)
 end

 it 'should return the main as an string' do 
  expect(@weatherapi.get_main).to be_kind_of(String)
 end

 it 'should return description as a string' do 
  expect(@weatherapi.get_description).to be_kind_of(String)
 end


 it 'should return icon as a string' do 
  expect(@weatherapi.get_icon).to be_kind_of(String)
 end

 it 'shoud return base as a string' do 
   expect(@weatherapi.get_base).to be_kind_of(String)
 end

 it 'should return main as a Hash' do 
  expect(@weatherapi.get_main_hash).to be_kind_of(Hash)
 end

 it 'should return temp as a flaot' do 
  expect(@weatherapi.get_temp).to be_kind_of(Float)
 end

 it 'should return pressure as a int' do 
  expect(@weatherapi.get_pressure).to be_kind_of(Integer)
 end 

 it 'should return humidity as a int' do 
  expect(@weatherapi.get_humidity).to be_kind_of(Integer)
 end 


 it 'should return temp_min as Float' do 
  expect(@weatherapi.get_temp_min).to be_kind_of(Float)
 end 

 it 'should return temp_max as Float' do 
  expect(@weatherapi.get_temp_max).to be_kind_of(Float)
 end 

 it 'should return visibility as int' do 
   expect(@weatherapi.get_visibility).to be_kind_of(Integer)
 end

 it 'should return wind speed as float' do 
   expect(@weatherapi.get_speed).to be_kind_of(Float)
 end

 it 'should return wind deg as an integer' do 
  expect(@weatherapi.get_deg).to be_kind_of(Integer)
 end

 it 'should return clouds all as integer' do 
  expect(@weatherapi.get_all).to be_kind_of(Integer)
 end

 it 'should return dt as integer' do 
  expect(@weatherapi.get_dt).to be_kind_of(Integer)
 end

 it 'should return type as integer' do 
  expect(@weatherapi.get_type).to be_kind_of(Integer)
 end
 
 it 'should return sys id as interger' do
  expect(@weatherapi.get_sys_id).to be_kind_of(Integer)
 end


 it 'should return sys message as a float' do
  expect(@weatherapi.get_sys_message).to be_kind_of(Float)
 end

 it 'should return sys country as a string' do 
  expect(@weatherapi.get_sys_country).to be_kind_of(String)
 end

 it 'should return sys sunrise as integer' do 
  expect(@weatherapi.get_sys_sunrise).to be_kind_of(Integer)
 end


 it 'should return sys sunset as integer' do 
  expect(@weatherapi.get_sys_sunset).to be_kind_of(Integer)
 end


 it 'should return coord id integer' do 
  expect(@weatherapi.get_coord_id).to be_kind_of(Integer)
 end

 it 'should return name as a string' do 
  expect(@weatherapi.get_name).to be_kind_of(String)
 end

 it 'should return cod as integer' do
  expect(@weatherapi.get_cod).to be_kind_of(Integer)
 end

 end

end