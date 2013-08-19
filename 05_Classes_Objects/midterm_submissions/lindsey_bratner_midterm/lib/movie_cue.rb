require_relative 'movie'

class MovieCue
  @@movie_cue = []
  
  def self.add_movie(movie)
    @@movie_cue << movie
  end

  def self.remove_movie(movie)
    @@movie_cue.delete_if { |each| each.title == movie}
  end

  def self.empty
    @@movie_cue.empty?
  end

  def self.has_movie(movie)
    @@movie_cue.any? {|h| h.title == movie}
    
  end

  def self.to_s
    @@movie_cue.map do |movie|
      movie.to_s
    end
  end

end
