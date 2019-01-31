require 'httparty'
require 'json'

class FiveDaysWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org'
 
  def five_days_weather_service(city_name, api_key)
    json_result = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city_name}&APPID=#{api_key}").body)
  end
end


# test = FiveDaysWeather.new
# p test.five_days_weather_service('London','1fd517da2fc4197f02b06d24a40c8b8e')

