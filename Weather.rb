require_relative './lib/services/current_weather'
require_relative './lib/services/five_days_weather'

# superclass
class Weather

  def current_weather
    CurrentWeather.new
  end

  def five_days_weather
    FiveDaysWeather.new
  end

  def method_name
    file = File.read('city_list.json')
    data_hash = JSON.parse(file)
  end

end
