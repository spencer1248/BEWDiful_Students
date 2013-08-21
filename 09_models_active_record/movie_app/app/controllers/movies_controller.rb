class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
  end

  def create
  	@movie = Movie.new(params[:movies])
  	if @movie.save
  		redirect_to root_path
  		flash[:notice] = "Movie successfully saved"
  	else
  		render :new
  		flash[:notice]
  	end
  end

  def search
  	user_query = params[:q]
  	@movies = Movie.find_query(user_query)
  end
end
