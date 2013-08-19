require_relative 'user'
require_relative 'topic'
require_relative 'suggested_event'

class Session

	def initialize
		@user = User.new(get_user_name)
		@topic = nil
	end

	def get_user_name
		puts
		puts 'What is your first name?'
		gets.chomp.capitalize
	end

	def run
		puts "\e[H\e[2J"
		welcome_user
		introduction
		program_for_user?
	end

	def suggest_topic
		@topic = Topic.new
		puts
		puts "Are you interested in meetups about #{@topic.title}?"
		interest = get_user_input

		if interest == "yes"
			find_event
		elsif interest  == "no"
			suggest_topic
		else
			puts
			puts "Please answer 'yes' or 'no'."
			suggest_topic
		end

	end

	def find_event
		event = SuggestedEvent.new(@topic.title)
		good_bye
	end

	def good_bye
		puts
	 	puts "Thanks for using my event finder. Good bye!"
 		puts
 	end

	def end_session
		puts
		puts "I'm sorry #{@user.name}, I don't think this program is for you."
		puts
	end


	def welcome_user

		puts "Hello, #{@user.name}!"
		puts
	end

	def introduction
		puts "This program will find you an event to help you learn new things and meet new people."
	end

	def program_for_user?
		puts
		puts "Do you like to learn new things and meet new people?"
		desire_to_learn = get_user_input

		if desire_to_learn == "yes"
			suggest_topic
		elsif desire_to_learn  == "no"
			end_session
		else
			puts
			puts "Please answer 'yes' or 'no'."
		  program_for_user?
		end

	end

	def get_user_input
		gets.chomp
	end

end