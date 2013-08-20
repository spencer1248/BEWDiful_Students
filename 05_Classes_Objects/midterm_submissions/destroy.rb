require_relative 'espn'               #I can't even get this runner file to load when I have these requires ontop, how would I even start to build the programm piece by piece?
require_relative 'headlineboard'
require_relative 'title'

def show_message(stork)
	puts stork
end

def intro
	puts "Welcome to Headlines!"
	puts "\nPlease pick an option: "
	puts "1. ESPN Headlines."
	puts "2. Rotten Tomatoes."
	puts "3. Enter your own headlines."
	puts "4. Exit."
	#puts "5. Destroy Espn titles."
end

def back_to_intro
	puts "\nPlease pick an option: "
	puts "1. ESPN Headlines."
	puts "2. Rotten Tomatoes."
	puts "3. Enter your own headlines."
	puts "4. Exit."
	#puts "5. Destroy Espn titles."
end

def get_input
	gets.chomp
end

def get_choice
	gets.chomp.to_i    
end

def add_espn_headline
	Espn.get.each do |random1|              #.get is a Class method called on Espn Class
		HeadlineBoard.add_headlines random1    #.add_headlines is a Class method called on HeadlineBoard class
	end
end

def add_rotten_news
	Rotten1.get.each do |random2|
		HeadlineBoard.add_headlines2 random2
	end
end

def show_headlineboard
	HeadlineBoard.title.each do |random|       #Class method .title sent to HeadlineBoard class
	show_message random   								     #random is a random variable as part of .each do block
	end
end

def show_rotten_news
	HeadlineBoard.movietitle.each do |random4|
	show_message random4
	end
end

# def destroy_espn
#  	HeadlineBoard.destroy_title #.each do |destroy1|
#  		#show_message destroy1
#  	#end
#  end

def add_manual_headline
	show_message("Enter your headline here: ")
	title = get_input
	show_message("Enter your source: ")
	source = get_input
	HeadlineBoard.add_headlines(Title.new(title, source))
end


def route 
	loop do 
		choice = get_choice   #is it possible to not set another variable and just go with get_choice ?
			if choice == 1
				puts "ESPN headlines coming up."
				add_espn_headline
				show_headlineboard
				back_to_intro
			elsif choice == 2
				puts "Movie Box Office news coming up:"
				add_rotten_news
				show_rotten_news
				back_to_intro
			elsif choice == 3
				puts "Please enter your headline here: "
				add_manual_headline
				show_headlineboard
			elsif choice == 4
				puts "See ya later."
				break
			# elsif choice == 5
			# 	puts "Destroying all ESPN titles..."
			# 	destroy_espn
			else puts "Enter a digit only! Retry:"
			end
		end
end


intro 
route
