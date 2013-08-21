
require_relative 'espn'
require_relative 'title'

class HeadlineBoard

	@@titles_espn = []    #class variable
	@@titles_rotten = []

	def self.add_headlines(random2)    #class method
		@@titles_espn << random2       #adding titles to an array of titles
	end

	def self.add_headlines2(random3)
		@@titles_rotten << random3
	end

	def self.title                  #class method
		@@titles_espn.map do |gonzo|
			"\nTITLE: #{gonzo.title}, \nSOURCE: #{gonzo.source}, Current UPVOTES: #{gonzo.upvote}."
		end
	end

	def self.movietitle
		@@titles_rotten.map do |bird|
			"\nMOVIE TITLE: #{bird.title}, \nCRITICS CONSENSUS: #{bird.critics_consensus}, Current UPVOTES #{bird.upvote}."
		end
	end

	# def self.destroy_title
	# 	@@titles_espn = []
	# 	[].clear
	# 	[].empty?
	# 	puts "all cleared."
	# 	end
	#end

end

############
############