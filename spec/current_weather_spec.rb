require 'spec_helper'

describe 'current weather api' do

  context 'requesting information on current weather' do
  
    before(:all) do
      @api_key = ENV['WEATHER_API_KEY']
      @current_weather = CurrentWeather.new
      @current_weather.current_weather_service('London', @api_key)
    end

    it 'should return entire data as a hash' do
      expect(@current_weather.retrieve_result).to be_kind_of(Hash)
    end

    it 'should return coord(co-ordinate) object as a hash' do
      expect(@current_weather.retrieve_coord).to be_kind_of(Hash)
    end

    it 'should return lon(Longitude) under coord(co-ordinate) as a float' do
      expect(@current_weather.retrieve_coord_lon).to be_kind_of(Float)
    end

    it 'should return lat(Latitude) under coord(co-ordinate) as a float' do
      expect(@current_weather.retrieve_coord_lat).to be_kind_of(Float)
    end

    it 'should return weather as a array' do
      expect(@current_weather.retrieve_weather).to be_kind_of(Array)
    end

    it 'should return id under weather array as a integer' do
      expect(@current_weather.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should return main under weather array as a string' do
      expect(@current_weather.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should return description under weather array as a string' do
      expect(@current_weather.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should return icon under weather array as a string' do
      expect(@current_weather.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should return base as a string' do
      expect(@current_weather.retrieve_base).to be_kind_of(String)
    end

    it 'should return main as Hash' do
      expect(@current_weather.retrieve_main).to be_kind_of(Hash)
    end

    it 'should return temp under main as a float' do
      expect(@current_weather.retrieve_main_temp).to be_kind_of(Float)
    end

    it 'should return pressure under main as an Integer' do
      expect(@current_weather.retrieve_main_pressure).to be_kind_of(Integer)
    end

    it 'should return humidity under main as an Integer' do
      expect(@current_weather.retrieve_main_humidity).to be_kind_of(Integer)
    end

    it 'should return minimum temperature under main as a Float' do
      expect(@current_weather.retrieve_main_temp_min).to be_kind_of(Float)
    end

    it 'should return maximum temperature under main as Float' do
      expect(@current_weather.retrieve_main_temp_min).to be_kind_of(Float)
    end

    it 'should return wind as Hash' do
      expect(@current_weather.retrieve_wind).to be_kind_of(Hash)
    end

    it 'should return speed under wind as float' do
      expect(@current_weather.retrieve_wind_speed).to be_kind_of(Float)
    end

    it 'should return degree under wind as Integer' do
      expect(@current_weather.retrieve_wind_deg).to be_kind_of(Integer)
    end

    it 'should return clouds as hash' do
      expect(@current_weather.retrieve_clouds).to be_kind_of(Hash)
    end

    it 'should return all under clouds as Integer' do
      expect(@current_weather.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should return visibility as Integer' do
      expect(@current_weather.retrieve_visibility).to be_kind_of(Integer)
    end

    it 'should return element inside weather array as Hash' do
      expect(@current_weather.retrieve_weather_array).to be_kind_of(Hash)
    end

    it 'should return dt as Integer' do
      expect(@current_weather.retrieve_dt).to be_kind_of(Integer)
    end

    it 'should return sys as Hash' do
      expect(@current_weather.retrieve_sys).to be_kind_of(Hash)
    end

    it 'should return type under sys as Integer' do
      expect(@current_weather.retrieve_sys_type).to be_kind_of(Integer)
    end

    it 'should return id under sys as Integer' do
      expect(@current_weather.retrieve_sys_id).to be_kind_of(Integer)
    end

    it 'should return message under sys as Float' do
      expect(@current_weather.retrieve_sys_message).to be_kind_of(Float)
    end

    it 'should return country under sys as String' do
      expect(@current_weather.retrieve_sys_country).to be_kind_of(String)
    end

    it 'should return country under sys with character length of 2' do
      expect(@current_weather.retrieve_sys_country.length).to eq 2
    end

    it 'should return sunrise under sys as Integer' do
      expect(@current_weather.retrieve_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should return sunset under sys as Integer' do
      expect(@current_weather.retrieve_sys_sunset).to be_kind_of(Integer)
    end

    it 'should return id as Integer' do
      expect(@current_weather.retrieve_id).to be_kind_of(Integer)
    end

    it 'should return name as String' do
      expect(@current_weather.retrieve_name).to be_kind_of(String)
    end

    it 'should return cod as Integer' do
      expect(@current_weather.retrieve_cod).to be_kind_of(Integer)
    end
  end
end
