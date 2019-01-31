require 'spec_helper'

describe 'five days weather api' do

  context 'requesting information on five days weather' do
  
    before(:all) do
      @api_key = ENV['WEATHER_API_KEY']
      @five_days_weather = FiveDaysWeather.new
      @five_days_weather.five_days_weather_service_name('London', @api_key)
    end

    it 'should return entire data as a Hash' do
      expect(@five_days_weather.retrieve_result).to be_kind_of(Hash)
    end

    it 'should return cod as String' do
      expect(@five_days_weather.retrieve_cod).to be_kind_of(String)
    end

    it 'should return message as Float' do
      expect(@five_days_weather.retrieve_message).to be_kind_of(Float)
    end

    it 'should return cnt as Integer' do
      expect(@five_days_weather.retrieve_cnt).to be_kind_of(Integer)
    end

    it 'should return list as Array' do
      expect(@five_days_weather.retrieve_list).to be_kind_of(Array)
    end

    it 'should return all dt inside list array as Integer' do
      @five_days_weather.retrieve_all_dt.each do |dt|
        expect(dt).to be_kind_of(Integer)
      end
    end

    it 'should return all main inside list array as Hash' do
      @five_days_weather.retrieve_all_main.each do |main|
        expect(main).to be_kind_of(Hash)
      end
    end

    it 'should return all temp inside main as Float' do
      @five_days_weather.retrieve_all_main_temp.each do |main_temp|
        expect(main_temp).to be_kind_of(Float)
      end
    end

    it 'should return all temp_min inside main as Float' do
      @five_days_weather.retrieve_all_main_temp_min.each do |main_temp_min|
        expect(main_temp_min).to be_kind_of(Float)
      end
    end

    it 'should return all temp_max inside main as Float' do
      @five_days_weather.retrieve_all_main_temp_max.each do |main_temp_max|
        expect(main_temp_max).to be_kind_of(Float)
      end
    end

    it 'should return all pressure inside main as Float' do
      @five_days_weather.retrieve_all_main_pressure.each do |main_pressure|
        expect(main_pressure).to be_kind_of(Float) | be_kind_of(Integer) 
      end
    end

    it 'should return all sea_level inside main as Float' do
      @five_days_weather.retrieve_all_main_sea_level.each do |main_sea_level|
        expect(main_sea_level).to be_kind_of(Float) | be_kind_of(Integer) 
      end
    end

    it 'should return all grnd_level inside main as Float' do
      @five_days_weather.retrieve_all_main_grnd_level.each do |main_grnd_level|
        expect(main_grnd_level).to be_kind_of(Float) | be_kind_of(Integer) 
      end
    end

    it 'should return all humidity inside main as Float' do
      @five_days_weather.retrieve_all_main_humidity.each do |main_humidity|
        expect(main_humidity).to be_kind_of(Float) | be_kind_of(Integer) 
      end
    end

    it 'should return all temp_kf inside main as Float' do
      @five_days_weather.retrieve_all_main_temp_kf.each do |main_temp_kf|
        expect(main_temp_kf).to be_kind_of(Float) | be_kind_of(Integer) 
      end
    end

    it 'should return all weather as Array' do
      @five_days_weather.retrieve_all_weather_array.each do |weather|
        expect(weather).to be_kind_of(Array) 
      end
    end

    it 'should return all id inside weather as Integer' do
      @five_days_weather.retrieve_all_weather_id.each do |weather_id|
        expect(weather_id).to be_kind_of(Integer) 
      end
    end

    it 'should return all id inside weather as Integer' do
      @five_days_weather.retrieve_all_weather_id.each do |weather_id|
        expect(weather_id).to be_kind_of(Integer) 
      end
    end

    it 'should return all main inside weather as String' do
      @five_days_weather.retrieve_all_weather_main.each do |weather_main|
        expect(weather_main).to be_kind_of(String) 
      end
    end

    it 'should return all description inside weather as String' do
      @five_days_weather.retrieve_all_weather_description.each do |weather_description|
        expect(weather_description).to be_kind_of(String) 
      end
    end

    it 'should return all icon inside weather as String' do
      @five_days_weather.retrieve_all_weather_icon.each do |weather_icon|
        expect(weather_icon).to be_kind_of(String) 
      end
    end
  end
end
