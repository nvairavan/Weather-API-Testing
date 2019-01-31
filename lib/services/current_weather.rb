require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org'
  
  def current_weather_service(city_name, api_key)
    @current_weather_data = JSON.parse(self.class.get("/data/2.5/weather?q=#{city_name}&APPID=#{api_key}").body)
  end

  def retrieve_result
    @current_weather_data
  end

  def retrieve_coord
    @current_weather_data['coord']
  end

  def retrieve_coord_lon
    retrieve_coord['lon']
  end

  def retrieve_coord_lat
    retrieve_coord['lat']
  end

  def retrieve_weather
    @current_weather_data['weather']
  end

  def retrieve_weather_id
    retrieve_weather[0]['id']
  end

  def retrieve_weather_main
    retrieve_weather[0]['main']
  end

  def retrieve_weather_description
    retrieve_weather[0]['description']
  end

  def retrieve_weather_icon
    retrieve_weather[0]['icon']
  end

  def retrieve_base
    @current_weather_data['base']
  end

  def retrieve_main
    @current_weather_data['main']
  end

  def retrieve_main_temp
    retrieve_main['temp']
  end  

  def retrieve_main_pressure
    retrieve_main['pressure']
  end  

  def retrieve_main_humidity
    retrieve_main['humidity']
  end  

  def retrieve_main_temp_min
    retrieve_main['temp_min']
  end  

  def retrieve_main_temp_max
    retrieve_main['temp_max']
  end  
  
  def retrieve_wind
    @current_weather_data['wind']
  end
  
  def retrieve_wind_speed
    retrieve_wind['speed']
  end
  
  def retrieve_wind_deg
    retrieve_wind['deg']
  end

  def retrieve_clouds
    @current_weather_data['clouds']
  end

  def retrieve_clouds_all
    retrieve_clouds['all']
  end

  def retrieve_visibility
    @current_weather_data['visibility']
  end

  def retrieve_weather_array
    retrieve_weather[0]
  end
  
  def retrieve_dt
    @current_weather_data['dt']
  end

  def retrieve_sys
    @current_weather_data['sys']
  end

  def retrieve_sys_type
    retrieve_sys['type']
  end

  def retrieve_sys_id
    retrieve_sys['id']
  end

  def retrieve_sys_message
    retrieve_sys['message']
  end

  def retrieve_sys_country
    retrieve_sys['country']
  end

  def retrieve_sys_sunrise
    retrieve_sys['sunrise']
  end

  def retrieve_sys_sunset
    retrieve_sys['sunset']
  end

  def retrieve_id
    @current_weather_data['id']
  end

  def retrieve_name
    @current_weather_data['name']
  end

  def retrieve_cod
    @current_weather_data['cod']
  end
end

test = CurrentWeather.new
test.current_weather_service('London','1fd517da2fc4197f02b06d24a40c8b8e')