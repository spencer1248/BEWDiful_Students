class PinboardsController < ApplicationController
  def show
    @pinboard = Pinboard.find(params[:id])
    @pinboard_players = @pinboard.players
  end
end
