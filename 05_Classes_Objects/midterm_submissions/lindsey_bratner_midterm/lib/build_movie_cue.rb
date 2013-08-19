require_relative 'get_source_data'
require_relative 'movie_cue'
require_relative 'movie'

class BuildMovieCue
  attr_accessor :user

  def initialize(user)
    @user = user
    show_menu
    cue_decisions
  end


  def show_message(message)
    puts message
  end

  def get_input
    gets.chomp 
  end

  def get_choice
    gets.to_i
  end

  def show_menu
    show_message "\n#{@user}, how would you like to pick a movie to add to your cue?"
    show_message "1. Choose from top movies on Rotten Tomatoes"
    show_message "2. I already know the name of the movie I want to add"
    show_message "3. Done picking movies, I just want to see my cue"
    show_message "4. Remove a movie from my cue"
    show_message "5. I am done and would like to exit"
  end

  def cue_decisions
    loop do
        choice = get_choice
      if choice == 1
        add_remote_movie
        show_movie_cue
        show_menu
      elsif choice == 2
        add_manual_movie
        show_movie_cue
        show_menu
      elsif choice == 3
        show_movie_cue
        show_menu
      elsif choice == 4
        remove_movie_from_cue
        show_movie_cue
        show_menu
      elsif choice == 5      
        break
      else
        show_message "Sorry #{@user}, It's Showtime doesn't recognize your selection"
        show_menu
      end
    end
    show_message "Enjoy your movies #{@user}, see you next time when It's Showtime!"
  end

  def add_remote_movie
    show_message "Do you want to pick from the top movies that are either: \n1. In theaters \n2. On DVD"
    choice = get_choice
    if choice == 1 or choice == 2 
      review_data(GetSourceData.get(choice))
    else
      show_message "Not a valid selection"
    end
  end

  def review_data(data)
    show_message "How many movies do you want to review? Enter a number between 1 and 10"
    number_of_movies = get_choice
    data.take(number_of_movies).each do |movie|
      movie.to_s
      show_message "Do you want to see the synopsis? Enter 'yes' or 'no'"        
      input = get_input
      if input == 'yes'
        show_message "Synposis: #{movie.synopsis}"
      end
      show_message "Do you want to add this movie to your cue? Enter 'yes' or 'no'"
      input = get_input
      if input == 'yes'
        MovieCue.add_movie movie
      end
    end
  end


  def add_manual_movie
    show_message "Please enter a the movie title:"
    title = get_input
    MovieCue.add_movie(Movie.new("User Pick", title, "N/A", "N/A", "N/A"))
  end

  def remove_movie_from_cue
    if MovieCue.empty
      show_message "There are no movies to remove."
    else
      show_message "Please enter the title of the movie you would like to remove from the #{@user}'s movie cue:"
      title = get_input
      if MovieCue.has_movie(title)
        MovieCue.remove_movie(title)
      else
        "#{@user}'s cue does not contain that movie."
      end
    end
  end

  def show_movie_cue
    if MovieCue.empty
      show_message "There are no movies in #{@user}'s cue."
    else
      show_message "#{@user}'s cue currently contains:"
   	  MovieCue.to_s
    end
  end

end

