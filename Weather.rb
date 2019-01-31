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

  # def randomiser
  #   file = File.read('city_list.json')
  #   data_hash = JSON.parse(file)
  #   item = data_hash[rand(data_hash.length)]
  #   p city_id = item['id']
  #   p city_name = item['name']
  # end
end
