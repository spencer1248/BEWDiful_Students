class DashboardController < ApplicationController
  def index
    @user = User.first
  	@current_user_pinboards = @user.pinboards.load
  	@current_user_pinboard_players = @user.pins
  end
end
