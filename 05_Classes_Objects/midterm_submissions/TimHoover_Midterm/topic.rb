require 'json'
require 'rest_client'



class Topic

	attr_accessor :title

	def initialize

		@title = get_topic_option
	end

	# def get_preferred_topic
		
	# 	puts
	# 	get_topic_option
	# 	# interested? = get_user_input

		


		
	# end

	# def interested_in_topic
	# 	interest = get_user_input

	# 	if interest == "yes"
	# 		get_event 
	# 	elsif interest  == "no"
	# 		get_topic_option
	# 	else
	# 		puts
	# 		puts "Please answer 'yes' or 'no'."
	# 	  get_topic_option
	# 	end

	# end

	# def get_event
	# 	puts "#{@topic}"
	# 	event = SuggestedEvent.new("@topic")
	# end




	def get_topic_option
	
  	topics = []
  
  	meetup  = RestClient.get 'http://api.meetup.com/topics.json/?key=7919482a615b1065ef4f7b978d74'
  	md      = JSON.load(meetup)

  	md["results"].each do |name|
    
    	topic = name["name"]

    	topics << topic

    end

    	topics.sample
	
	end

	# def get_user_input
	# 	gets.chomp
	# end




	# def get_preferred_topic
	# 	puts
	# 	puts "What topic do you want to learn more about?"
	# 	gets.chomp
	# end



end

Topic.new