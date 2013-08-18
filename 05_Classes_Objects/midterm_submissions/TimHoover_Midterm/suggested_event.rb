require 'json'
require 'rest_client'


class SuggestedEvent


	def initialize(search_topic)
		
		@search_topic = search_topic
		get_events
	
	end

	# def show_search_topic
		
	# 	puts @search_topic
	
	# end

	def get_events
	
	  events_list = []
	
	  search = @search_topic.gsub(/\s+/, "-").downcase
	
	  url = 'https://api.meetup.com/2/open_events.json?zip=10012&text=' + search + '&key=7919482a615b1065ef4f7b978d74'
	
		# puts url #puts final url being searched

	  event_search = RestClient.get url.to_s
	  events = JSON.load(event_search)

	  

	  	events["results"].each do |name|
		    
		    event = name
		    events_list << event

		  end

  	final_event = events_list.sample

  	# puts final_event // puts entire sample event hash

  	puts
  	puts "Awesome!"
  	puts 
  	puts "I found an #{final_event["status"]} event for you called #{final_event["name"]}"
  	puts "#{final_event["yes_rsvp_count"]} people plan on going."
  	puts "You can learn more by visiting #{final_event["event_url"]}"
  	puts




  	# if final_event["name"].empty?
  	# 	puts "Sorry, Can't find the title."
  	# else
  	# 	puts "Awesome!"
  	# 	puts "I found an #{final_event["status"]} event for you called #{final_event["name"]}"
  	# 	puts
  	# end

  	# if final_event["yes_rsvp_count"].nil?
  	# 	puts "Sorry, can't find the event rsvp count."
  	# else
  	# 	puts "You can learn more by visiting #{final_event["yes_rsvp_count"]}"
  	# end

  	# if final_event["event_url"].nil?
  	# 	puts "Sorry, can't find the event url."
  	# else
  	# 	puts "You can learn more by visiting #{final_event["event_url"]}"
  	# end

  	puts

	end
	
end