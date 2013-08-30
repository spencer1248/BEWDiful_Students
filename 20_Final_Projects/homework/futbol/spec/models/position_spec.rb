require 'spec_helper'

describe Position do
  before { @position = Position.create(player_position: "Midfielder")}

  subject { @position }

  it { should be_valid}
  it {should respond_to(:player_position)}
  it { should respond_to(:players)}
end
