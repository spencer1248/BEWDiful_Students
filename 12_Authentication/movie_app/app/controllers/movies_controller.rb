class MoviesController < ApplicationController
  before_action :find_movie, only: [:update, :edit, :show]

  before_filter :authenticate_user!, only: [:edit]


def index
	@movies = Movie.all 
end

def search
    @query = params[:q]

    @movies = Movie.where( 'title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "#{@query}%")


    render 'movie_search'
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.new(movie_params)

    if movie.save
      redirect_to movies_path
    else
      flash[:alert] = movie.errors.full_messages.to_sentence + "  The movie was not saved."
      redirect_to new_movie_path
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])

    if movie.update_attributes(movie_params)
      redirect_to movie_path(movie)
    else
      flash[:alert] = movie.errors.full_messages.to_sentence
      redirect_to edit_movie_path(movie)
    end
  end

  def destroy
    movie = Movie.find(params[:id])

    movie.destroy

    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :year_released, :rating, :user_id)
  end
end




