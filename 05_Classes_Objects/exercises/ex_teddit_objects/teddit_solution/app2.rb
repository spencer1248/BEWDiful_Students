# require_relative 'remotesource'

class App
	def intro
		puts "Welcome to the API Story app"
		puts "You have two choices - enter mashable or twitter to get info\n\n"
		input = gets.chomp.capitalize
		#input need to check who to pull data from mashable or twitter
	end

	def add_data 
		# Remotesource.get 
	end

	def repeat
		puts "Great, do you want to get more information?\n\n"
	end



	def launch
		intro
	end
end
