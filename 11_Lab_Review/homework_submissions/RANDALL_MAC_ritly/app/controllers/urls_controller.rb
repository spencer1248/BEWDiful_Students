class URLsController < ApplicationController


def index
	@URLs = URL.all 
end

def request
    @query = params[:q]

    @movies = Movie.where( 'title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "#{@query}%")


    render 'movie_search'
  end

  def show
    @URL = URL.find(params[:id])
  end

  def new
    @URL = URL.new
  end

  def create
    URL = URL.new(URL_params)

    if movie.save
      redirect_to movies_path
    else
      flash[:alert] = movie.errors.full_messages.to_sentence + "  The movie was not saved."
      redirect_to new_movie_path
    end
  end



 

  private

  def URL_params
    params.require(:URL).permit(:title, :description, :year_released, :rating, :user_id)
  end
end




