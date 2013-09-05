Given(/^I have pinboard$/) do
  @user = User.new  
  @pinboard = @user.pinboards.build(name: "Epl", description: "Epl players")
end

Given(/^There is a player$/) do
    @player = Player.new
end

When(/^I add a player to pinboard$/) do
    @user.add_player_to_pin_board(@pinboard, @player)
end

Then(/^My pinboard should include player$/) do
    @pinboard.players.include?(@player)
end
