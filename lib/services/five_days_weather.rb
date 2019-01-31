require 'httparty'
require 'json'

class FiveDaysWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org'
 
  def five_days_weather_service_name(city_name, api_key)
    @five_days_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city_name}&APPID=#{api_key}").body)
  end
 
  def five_days_weather_service_id(city_id, api_key)
    @five_days_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?id=#{city_id}&APPID=#{api_key}").body)
  end

  def retrieve_result
    @five_days_weather_data
  end

  def retrieve_cod
    @five_days_weather_data['cod']
  end

  def retrieve_message
    @five_days_weather_data['message']
  end

  def retrieve_cnt
    @five_days_weather_data['cnt']
  end

  def retrieve_list
    @five_days_weather_data['list']
  end

  def retrieve_all_dt
    dt = []
    retrieve_list.each do |result|
      dt << result['dt']
    end
    dt
  end

  def retrieve_all_main
    main = []
    retrieve_list.each do |result|
      main << result['main']
    end
    main
  end

  def retrieve_all_main_temp
    main_temp = []
    retrieve_list.each do |result|
      main_temp << result['main']['temp']
    end
    main_temp
  end

  def retrieve_all_main_temp_min
    main_temp_min = []
    retrieve_list.each do |result|
      main_temp_min << result['main']['temp_min']
    end
    main_temp_min
  end

  def retrieve_all_main_temp_max
    main_temp_max = []
    retrieve_list.each do |result|
      main_temp_max << result['main']['temp_max']
    end
    main_temp_max
  end

  def retrieve_all_main_
    main_temp_max = []
    retrieve_list.each do |result|
      main_temp_max << result['main']['temp_max']
    end
    main_temp_max
  end

  def retrieve_all_main_pressure
    main_pressure = []
    retrieve_list.each do |result|
      main_pressure << result['main']['pressure']
    end
    main_pressure
  end

  def retrieve_all_main_sea_level
    main_sea_level = []
    retrieve_list.each do |result|
      main_sea_level << result['main']['sea_level']
    end
    main_sea_level
  end

  def retrieve_all_main_grnd_level
    main_grnd_level = []
    retrieve_list.each do |result|
      main_grnd_level << result['main']['grnd_level']
    end
    main_grnd_level
  end

  def retrieve_all_main_humidity
    main_humidity = []
    retrieve_list.each do |result|
      main_humidity << result['main']['humidity']
    end
    main_humidity
  end

  def retrieve_all_main_temp_kf
    main_temp_kf = []
    retrieve_list.each do |result|
      main_temp_kf << result['main']['temp_kf']
    end
    main_temp_kf
  end

  def retrieve_all_weather_array
    weather_array = []
    retrieve_list.each do |result|
      weather_array << result['weather']
    end
    weather_array
  end

  def retrieve_all_weather_id
    weather_id = []
    retrieve_list.each do |result|
      weather_id << result['weather'].first.first.last
    end
    weather_id
  end

  def retrieve_all_weather_main
    weather_main = []
    retrieve_list.each do |result|
      weather_main << result['weather'].first['main']
    end
    weather_main
  end

  def retrieve_all_weather_description
    weather_description = []
    retrieve_list.each do |result|
      weather_description << result['weather'].first['description']
    end
    weather_description
  end

  def retrieve_all_weather_icon
    weather_icon = []
    retrieve_list.each do |result|
      weather_icon << result['weather'].first['icon']
    end
    weather_icon
  end

end

test = FiveDaysWeather.new
test.five_days_weather_service_name('London','1fd517da2fc4197f02b06d24a40c8b8e')