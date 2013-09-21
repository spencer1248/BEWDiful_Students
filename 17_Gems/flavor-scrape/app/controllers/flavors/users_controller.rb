class Flavors::UsersController < ApplicationController
  def show
    @username = params[:username]
    @description = FlavorsWrapper.get_user(@username)
  end
end