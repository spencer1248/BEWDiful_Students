require 'spec_helper'

describe "Movies" do
  describe "Movies index page" do
    it "should have content Welcome to RentFlix" do
      get root_path
      expect(response.body).to include("Welcome to RentFlix")
    end
  end

  describe "Add new movie" do
  	it "should display sign in page" do
  		get new_movie_path
  		response.should redirect_to(new_user_session_path)
  	end
  end
end
