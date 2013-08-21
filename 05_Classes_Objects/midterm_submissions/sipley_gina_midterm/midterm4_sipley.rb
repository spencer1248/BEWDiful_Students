require 'rest_client'
require 'json'
require 'pp' 
require_relative 'digg'
require_relative 'story'
require_relative 'writer'
require_relative 'message'



greeting = Message.get_message
puts greeting

headlines=Digg.get_stories
 
headlines.each_with_index do |story, index|
	puts "#{index +1}. #{story.title}"
end

writer_answer  = gets.chomp.to_i
selected_story = headlines[writer_answer-1]

if writer_answer == 0
	puts "Sorry, please try again."
elsif writer_answer <= 11
	puts "Thank you for selecting #{selected_story.title}! Your deadline to the editor is in 24 hours."
else 
	puts "Sorry, please try again."
end
		

