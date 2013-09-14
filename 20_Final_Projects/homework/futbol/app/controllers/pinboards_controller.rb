class PinboardsController < ApplicationController
  def index
  end
  
  def show
    @pinboard = Pinboard.find(params[:id])
    @pinboard_players = @pinboard.players
  end
end
