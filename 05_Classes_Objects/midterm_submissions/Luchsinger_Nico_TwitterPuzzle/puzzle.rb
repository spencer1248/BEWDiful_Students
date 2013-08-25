class Puzzle

	#Arrays of punctuation signs that will be removed from words, and "flags" - words including these are not chosen as ommitted words.
	@@punctuation = ['.', ',', ':', ';', '!', '?', '"', '(', ')', '-']
	@@flags = ['#', 'http', '@', '&', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':-)', ';-)']

	attr_accessor :ommitted, :user, :text, :front_string, :back_string, :valid_tweet

	def initialize(tweet, query)
		@user = tweet.user
		@text = tweet.text
		@query = query
		@valid_tweet = true
		build_puzzle(@text)
	end

	# Creates the 'puzzle': The word to be ommitted and the strings before and after it.
	# A counter is built in; after 50 iterations, it stops and returns 'false' for the value @valid_tweet. This ensures that the program does not enter an infinite loop if a tweet does not contain any 'valid' words to be ommitted.
	def build_puzzle(text)
		@original_words = text.split
		words = split_words(text)
		@ommitted = ""
		counter = 0
		until string_is_valid?(@ommitted) || counter == 50
			position = rand(words.count)
			@ommitted = words[position]
			counter += 1
		end
		assign_values(counter, position)
	end

	#Assigns values to the different 'building blocks' of the puzzle
	def assign_values(counter, position)
		if counter >= 50
			@valid_tweet = false
		end
		if position == 0
			@front_string = ''
		else
			@front_string = @original_words[0..position-1].join(' ')
		end
		if position == @original_words.count
			@back_string = ''
		else
			@back_string = @original_words[position+1..@original_words.count].join(' ')
		end
	end


	#Validates the randomly chosen string: Invalid if it matches the search term, is too short, a hashtag or a URL
	def string_is_valid?(string)
		valid = true
		if 	string.downcase == @query.downcase || string.length <= 3  
			valid = false
		end
		@@flags.each do |flag|
			if string.include?(flag)
				valid = false
			end
		end
		valid
	end

	#Splits the tweet into an array of its word and 'cleans' each word from punctuation.
	def split_words(text)
		words = text.split
		words.each do |word|
			@@punctuation.each do |sign|
				while word.include?(sign)
					word.sub!(sign, '')
				end
			end
		end
		words
	end
end