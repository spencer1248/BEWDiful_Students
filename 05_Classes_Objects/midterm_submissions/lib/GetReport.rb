require 'rest_client'
require 'json'
 

class Weather_report
	
	# Commented out ATTR section because not using these instance variables outside body of Class - if use in future, uncomment out
	# attr_accessor :new_user, :new_city, :city_list, :error_msg, :error_location, :error_no_results, :error_wrong_choice

	# Initalize instance variables to be used throughout the various method calls

	def initialize(name,city_name)
		@new_user = name    	#user name
		@new_city = city_name 	#name of city to be searched
		@city_list =[]			#list of city search results

		@error_msg = ""			#For error handling, error msg will determine course of action
		@error_location = "not recognizable input for location finder"
		@error_no_results = "no results returned, please check input form, do not use special characters"
		@error_wrong_choice = "sorry, your input was not in the choice range"

		# Get the weather report based instance variable inputs
		get_report
	end
	
	
	def get_report
		if check_input?   # check if search string of city name is valid
			list_city_to_choose  # numbered list of cities returned in the search for user to select
			start_process	# Processes and validates user input, return the weather report of city chosen
		else
			@error_msg = @error_location #User input error, signal location error
			handle_error
		end
	end

	def check_input?  #must input only letters
		if @new_city.empty? || (not all_letters(@new_city))  #empty or whether only letters are inputted
			return false
		else
			puts "searching for cities that start with '#{@new_city}'....."  #see the search string being procesed
			return true
		end
	end

	def all_letters(str)
		# Googled for this function that I found neat and helpful for input string checks
	    # Use 'str[/[a-zA-Z]*/] == str' to let all_letters
	    # yield true for the empty string
	    # || @new_city =~ /\d/  string to test for number existance - uncomment out to test for string containing a number
	    str[/[a-zA-Z]+/]  == str
	end

	def list_city_to_choose

		# Build the search query
		query_url = "http://autocomplete.wunderground.com/aq?query=#{@new_city}&c=US&format=JSON"
		res_query = JSON.load(RestClient.get query_url)  #do the search and get results

		# The individual results from search contains city and state in one string 'New York, NY'
		# All results will be put into an city list array for further processing
		res_query["RESULTS"].map do |located|
			extracted_results = located["name"]
			@city_list << extracted_results
		end

		if @city_list.any?   #got results - then prepare to print out list
			map_choices(@city_list)  #Need to provide index number to corresponding city so need to map method
									 #note a parameter is passed to the method because the function does not take instance variables
		else
			@error_msg = @error_no_results  #empty, search is invalid, nothing returned, signal no results error
			handle_error
		end
	end

	def map_choices(list_of_cities)  # Must pass in the input via a parameter since each_with_index method does not accept instance variables?? I tried....
		list_of_cities.each_with_index {|list_of_cities, index| puts "#{index} => #{list_of_cities}" }
	end

	def get_final_result(choice)
		
		
		# user selected one value from the array which contains city+state in one string delimited by a comma
		# need to parse the string to separate city and state to build the URL for Wunderground API request
		# problem is string "new york" contains spaces which URL does not like, so must also replace space with undrescores

		citystate = @city_list[choice].split(',')  #use the delimiter comma, to separate city from state and put into temp array of 2 values
		getcity = citystate[0].strip.tr(" ","_")   #first value is city, replace space between words with underscore "new york" will be "new_york"
		getstate = citystate[1].strip.tr(" ","_")	#same logic for state as above

		#prepare URL to get the weather report for the city and state
		url = "http://api.wunderground.com/api/#{$api_key}/geolookup/conditions/q/#{getstate}/#{getcity}.json"
		res = RestClient.get url
		parsed_json = JSON.parse(res)

		# for presentation purposes, need to undo underscores from city and state
		# location = getcity.tr("_"," ")+', '+getstate.tr("_"," ") #maybe get back string from json to avoid special characters
		# ...or just grab city and state again from the results and not deal with removing underscores
		#extract the information
		city_location = parsed_json['location']['city']
		state_location = parsed_json['location']['state']
		location = city_location+", "+state_location
		
		# extract temperature info
		temp_f = parsed_json['current_observation']['temp_f']
		# extract simple weather info
		weather = parsed_json['current_observation']['weather'].downcase

		url = "http://api.wunderground.com/api/#{$api_key}/forecast/q/#{getstate}/#{getcity}.json"

		# tried to extract forecast - but getting errors - not sure why yet
		# forecast = parsed_json['forecast']['txt_forecast']['forecastday']['0']['fcttext']

		puts("Current temperature in #{location} is: #{temp_f} degrees franrenheit and #{weather}")
		# cd puts( "For today the general forecast is #{forecast}")
	end

	def start_process  
		# At this point, we've been through the initial checks and already output a list of city to choose from
		# Now we prepare for second user input for a valid number corresponding to list of cities to choose from
		
		choice = choose_number_city  # request user to input a number from a list of numbers
		if check_number_valid(choice,@city_list.length-1)  #list is 0 to something
			get_final_result(choice)  	#user input number validates, get the final report of the weather for city, state
			run_again  					#check if user wants to do whole program again
		else
			@error_msg = @error_wrong_choice #user didn't pick number from range, trigger error
			handle_error
		end
	end

	def handle_error
		puts("Your input is an invalid entry, #{@error_msg}")  #output the error message 
		puts("Do you want to quit? 'y' or 'n'")
		response = gets.chomp
		if response == 'y'
			goodbye
		elsif @error_msg == @error_wrong_choice  #the case where the user input wrong choice from a list, then allow user to see the input list again
			map_choices(@city_list)  #need to pass values to function that doesn't take instance variables
			start_process  #restart the user input checks again from the choice processing method
		else
			start_weather_report #default case is user wants to start fresh from the beginning
		end
	end

	#def choose_number_city
	#	puts("please choose number corresponding to city of choice, or another input to start again or quit")
	#	picknum = gets.to_i
	#end

	def choose_number_city
		#def choose_number_city  (Did not use this routine for more robust check for integer input)
		#	puts("please choose number corresponding to city of choice, or another input to start again or quit")
		#	picknum = gets.to_i
		#end
		
		# this method ask for number input and check whether a number is selected
		puts("please choose number corresponding to city of choice")
		picknum = gets  # Decided not to use gets.to_i, wanted to check if user input non-numbers, to_i would return 0 - a false valid entry
		
		if (Integer(picknum) rescue nil)  # This checks whether string input is really an integer in string format
			picknum.to_i				  # If true, then convert it to a number
		else
			9999						  # If it was not an integer, then return a dummy error value to trigger appropriate error handling
		end
	end


	def check_number_valid(choice,choice_range)  # Decided to pass in parameters only because it looks better to see choice variable
		
		# this method check if user input is valid in the number range provided
		if choice.between?(0,choice_range)
			true
		else
			false
		end
	end

	def continue_again?
		# Method to check get user input to see if user wants to start again
		puts("Do you like to input another, Enter 'y' or 'n'?")
		response = gets.chomp
		if response == 'y'
			true
		else
			false
		end
	end


	def run_again
		# Method to re-run or leave the program based on evaluating user input
		if continue_again?
			start_weather_report
		else
			goodbye
		end
	end

	def goodbye
		# user wants to exit
		puts("Thanks for dropping by")
		exit
	end
end