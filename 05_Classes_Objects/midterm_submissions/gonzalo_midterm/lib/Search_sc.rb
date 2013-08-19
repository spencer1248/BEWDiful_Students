require 'soundcloud'

class SearchSc

  def welcome
  	puts "Welcome to Soundcloud's top favorited track search engine"
  end

  def search 
  	client = Soundcloud.new(:client_id => 'a01ca4fe6cc380e1dd1289d49660d8d0')
  	
    puts "Enter an artist, song or genre to find what is most popular:"
	@query = gets.chomp
	@tracks = client.get('/tracks', :q => @query)
	@playlist = []

		if @tracks.empty?
		puts "No results"

		elsif
		@tracks.map do |track|

			@track = {
				  title: track.title,
				  link: track.permalink_url,
				  favorites: track.favoritings_count
				}
				@playlist << @track

	  	end
  end

  def display_query
		
		if @tracks.empty?
			puts "sorry"
		elsif
		@playlist.sort_by! { |t| t[:favorites] }

		puts "Title: #{@playlist.last[:title]}" 
		puts "Listen to it here: #{@playlist.last[:link]}"
		puts "Mosted favorited with: #{@playlist.last[:favorites]} votes"
		end
  end
  
  def continue_search
		puts "Want to search for more tracks? Type yes or no to exit"
		@input = gets.chomp
			if @input.downcase == "yes"
				search
				display_query
				continue_search
			elsif @input.downcase == "no"
				exit
			else @input.downcase != "yes" || "no"
				puts "invalid selection"
				continue_search
			end
  end

end  	
end
	