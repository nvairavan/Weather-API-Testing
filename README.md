# Weather-API-Testing
### Project Brief
Create a SOM for the Open Weather API and test the current weather (https://openweathermap.org/current) and five day (https://openweathermap.org/forecast5) services.

### Description
Aim of this project is to get better understanding of API(Application programming interface) testing. Here, I have used Open Weather API from (https://openweathermap.org) to test current weather and five day services.

### Technology used
* Ruby
* RSpec
* Github

### How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Run rspec in the terminal and install gems if needed.

### How to use
1. Create lib folder
2. Put the code into the lib folder
4. Instantiate the super class Weather.rb in your _spec.rb file
5. Open your spec_helper.rb and require_relative with the given path of the Weather.rb file
        
        eg. require 'rspec'
            require_relative '../Weather'
6. Run the method within that Weather.rb superclass
7. Run RSpec in the terminal to run the test

### Challenges
1. Creating different types of test
2. Thinking of exit criteria.

### Learning points
1. Setting up the file structure so that it is easily accessible and clearer.
2. Understanding what's need to be tested and how. 
3. Practicing API calling and understanding super class.