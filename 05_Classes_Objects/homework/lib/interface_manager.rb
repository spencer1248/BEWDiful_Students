#James Naadjie-Midterm Project
#Describes the InterfaceManager which is responsible for all user interactions with the applications
class InterfaceManager

	def initialize
		InterfaceManager.show_message("Welcome to Tech News! a text based news aggregator. Get today's technology news tomorrow!")
	end

	def self.show_message(message)
 	 puts message
	end

	def self.get_input
	  gets.chomp 
	end

	def self.get_choice
 	 gets.to_i
	end

	def self.show_menu
  	  show_message "Would you like to:"
  	  show_message "1. Get stories from Mashable"
  	  show_message "2. Get Stories from Digg"
  	  show_message "3. Exit"
	end
end