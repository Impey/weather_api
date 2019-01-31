require 'spec_helper'

describe Weather do 
 context 'requesting information for current weather location' do
 
  before(:all) do 
    @weatherapi = Weather.new.current_weather
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

  it 'should return the weather in an array' do 
    expect(@weatherapi.get_weather).to be_kind_of(Array)
  end

 it 'should return the id as an integer' do 
  expect(@weatherapi.get_id).to be_kind_of(Integer)
 end
 end

end