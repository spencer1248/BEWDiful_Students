require 'spec_helper'

describe Player do
  before { @player = FactoryGirl.create(:player)}

  subject {@player}

  it {should be_valid }
  it {should respond_to(:first_name)}
  it {should respond_to(:last_name)}
  it {should respond_to(:jersey_number)}
  it {should respond_to(:height)}
  it {should respond_to(:weight)}
  it {should respond_to(:date_of_birth)}
  it {should respond_to(:place_of_birth)}
  it { should respond_to(:position)}
  it { should respond_to(:club)}

  describe "player validations" do
  	context "when player first name is blank" do
  		before { @player.first_name = ""}
  		it { should_not be_valid}
  	end

  	context "when player last name is blank" do
  		before { @player.last_name = ""}
  		it { should_not be_valid}
  	end

  	context "when player weight is blank" do
  		before { @player.weight = ""}
  		it { should_not be_valid}
  	end

  	context "when player height is blank" do
  		before { @player.height = ""}
  		it { should_not be_valid}
  	end

  	context "when jersey_number is blank" do
  		before { @player.jersey_number = ""}
  		it { should_not be_valid}

  		describe "when jersey_number not a number" do
  			before { @player.jersey_number = "y"}
  			it {should_not be_valid}
  		end
  	end


  	
 	
  end
end
