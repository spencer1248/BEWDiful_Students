class MoviesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :edit]

  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
    @movie.tags.build
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @movie = current_user.movies.new(movie_params)
    # @movie.user_id = current_user.id
    if @movie.save
      redirect_to @movie
      flash[:notice] = "Movie successfully added"
    else
      render 'new'
      flash[:alert] = "Sorry couldn't add new movie, check infor"
    end
  end

  def edit
    @movie = Movie.find(params[:id]) 
    if current_user.id != @movie.user_id
      redirect_to root_path
      flash[:notice] = "You can only edit movies you created"
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def search
  	user_query = params[:q]
  	@movies = Movie.find_query(user_query)
  end

  private

    # def is_current_user?
    #   @movie = Movie.find(params[:id])
    #   current_user.id == @movie.user_id
    # end

    def movie_params
      params.require(:movie).permit(:title, :description, :year_released, :rating, tags_attributes: [:id, :value])
   end
end
