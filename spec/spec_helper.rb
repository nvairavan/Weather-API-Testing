require 'rspec'
require 'json'
require 'httparty'
require_relative '../lib/services/current_weather'
require_relative '../lib/services/five_days_weather'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end