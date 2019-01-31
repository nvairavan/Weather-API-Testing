require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org'
  
  def random_id
    item = data_hash[rand(data_hash.length)]
  end


  def current_weather_service(city_name, api_key)
    json_result = JSON.parse(self.class.get("/data/2.5/weather?q=#{city_name}&APPID=#{api_key}").body)
  end


end

test = CurrentWeather.new
p test.current_weather_service('London','1fd517da2fc4197f02b06d24a40c8b8e')