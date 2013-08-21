class AlbumsByArtistSearch

	include Enumerable

	attr_accessor :total_results

	def initialize(hash)
		@albums = hash.albums
		@total_results = @albums.length
	end

	def get_album_name_by_index(index)
		@albums[index].name
	end

	def get_album_uri_by_index(index)
		@albums[index].uri
	end

	def to_s
		@albums.each_with_index { |album, index|
		 	puts "    #{index+1}. #{album.name}"
		}
	end
end
