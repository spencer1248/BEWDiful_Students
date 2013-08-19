
$:.unshift (File.dirname(__FILE__))
require 'lib/Greetings'
require 'lib/GetReport'

# This is an program that connects to the Wunderground 


def start_weather_report
	$api_key = '9413d36ac53dc3ad'  #API key to Wunderground API
	greet
	user = gets.chomp.capitalize
	puts ("Hello #{user}!")
	intro

	#Through trial and error, Wunderground API does not like spaces, so remove of all spaces before the search, i.e. "new york" converted to newyork 
	user_city = gets.chomp.strip.tr(" ","")

	#start the weather report
	#Instantiate the Weather report object

	weather_report = Weather_report.new(user,user_city)
end

start_weather_report