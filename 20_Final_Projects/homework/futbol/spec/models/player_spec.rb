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

end
