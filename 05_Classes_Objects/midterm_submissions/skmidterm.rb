#Create a command line based application that fulfills these criteria:

    # Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
    # Connects to a 3rd party api where the call varies based on what the user gives you.
    # Must be object oriented. You must instantiate modeled classes. The only file that can run without 
    # classes is your runner.
    # Push code on Github.

####################

# require 'rest_client'
# require 'json'

#It's a family affair...

require_relative 'twitter_token_Oauth.rb'
require_relative 'weiner.rb' #creates a link to the Weiner class.
require_relative 'deblasio.rb' #creates a link to the Deblasio class.
require_relative 'quinn.rb' #creates a link to Quinn class


def get_input
  gets.chomp 
end

def get_choice
  gets.to_i
end

#Show the options.
def show_menu
  puts "Would you like to:"
  puts "1. Get 10 twitter search results about Anthony Weiner from the last week or so."
  puts "2. Get 10 twitter search results about Bill Deblasio from the last week or so."
  puts "3. Get 10 twitter search results about Christine Quinn from the last week or so."
  puts "4. Exit"
end

def looping_function
	loop do
	  choice = get_choice
	  if choice == 1
	    #add_weiner_twitter_feeds
	    show_menu
	  elsif choice == 2
	    #add_deblasio_twitter_feeds
	    show_menu
	  elsif choice == 3
	    #add_quinn_twitter_feeds
	    show_menu
	  elsif choice ==  4 
	    break
	  else
	    puts "Invalid Selection"
	    show_menu
	  end
	end
end


#The methods for each of the options that reference the children.

def add_weiner_twitter_feeds
	Weiner.get.each do |twitter_results|

	end
end

def add_deblasio_twitter_feeds
	#Deblasio.get.each do |twitter_results|
end

def add_quinn_twitter_feeds
	Quinn.get.each do |twitter_results|
	end
end



#### HEART OF THE PROGRAM #######
puts ("It's tough being a New Yorker during a mayorial election. 
	\nWe're busy and there seems to be a never ending stream of information.
	\nHistory tells us that Twitter sometimes has some pretty juicy stuff.")

show_menu
looping_function

puts "Voting Day is November 5, 2013. I hope this was useful."

