class CommentsController < ApplicationController

  def create
    movie = Movie.find(params[:movie_id])

    current_user.comments.create comment_params

    redirect_to movie
  end

  def comment_params
    params.require(:comment).permit(:comment_text).merge(movie_id: params[:movie_id])
  end
end
