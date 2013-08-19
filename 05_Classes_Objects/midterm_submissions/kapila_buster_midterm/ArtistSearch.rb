class ArtistSearch

	include Enumerable

	attr_accessor :total_results

	def initialize(hash)
		@artists = hash[:artists]
		@total_results = @artists.length
	end

	def get_artist_name_by_index(index)
		@artists[index].name
	end

	def get_artist_uri_by_index(index)
		@artists[index].uri
	end

	def to_s
		@artists.each_with_index { |artist, index|
			puts "    #{index+1}. #{artist.name}"
		}
	end
end
