class Message


	def self.get_message
		show_message("This is PolicySchtick - Your Source for the Best Op-Eds on Today's Trending News.")

		puts "Do you want to write an Op-Ed about one of these stories? Type Y or N"

		writer_answer = $stdin.gets.chomp.to_i

		loop do 
			"y" || "n"
			if writer_answer != "y"
  		break
			end 
		end

		puts "What story would you like to write about?"

		writer_answer = $stdin.gets.chomp.to_i

		loop do 
			(1...10)
			if writer_answer != [1...10]
			break
			end
		end

		puts "Great! Your submission deadline is in 24 hours!"

	end
end