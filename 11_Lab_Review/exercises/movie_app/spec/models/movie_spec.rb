require 'spec_helper'

describe Movie do
  before { @movie = Movie.new(title: "Red", 
  							  description: "Retired Extremely dangerous capable", 
  							  year_released: 2010, rating: 4)}

  subject { @movie }

  it { should be_valid}
  it {should respond_to(:title)}
  it {should respond_to(:description)}
  it {should respond_to(:year_released)}
  it {should respond_to(:rating)}
  it {should respond_to(:user_id)}

  describe "movie validations" do
  	
  	context "when movie title is blank" do # let(:movie_without_title) { FactoryGirl.create(:movie)}
  		before { @movie.title = ""}
  		it { should_not be_valid}
  	end

  	context "when movie description is too short" do
  		before { @movie.description = "Too-short"}
  		it { should_not be_valid }
  	end

  	context "when movie year_released is not a number" do
  		before { @movie.year_released = "not a number"}
  		it { should_not be_valid }
  	end

  	context "when movie rating does not include number between 1..5" do
  		before { @movie.rating = 6}
  		it { should_not be_valid }
  	end
  end
end
