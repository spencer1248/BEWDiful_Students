Given(/^I have pinboard$/) do
  @user = User.new  
  @pinboard = @user.pinboards.build(name: "Epl", description: "Epl players")
end

Given(/^There is a player$/) do
    @player = Player.new
end

When(/^I add a player to pinboard$/) do
    @pinboard.pin_player_to_board(@player)
end

Then(/^My pinboard should include player$/) do
    @pinboard.players.include?(@player)
end

# example steps
Given(/^I have a "(.*?)"$/) do |pinboard|
  @user = User.create(email: "foo@example.com", password: "password", password_confirmation: "password")
   @pinboard = @user.pinboards.create(name: pinboard, description: "defenders")
end

Given(/^I have a player with "(.*?)" and "(.*?)"$/) do |fname, lname|
    @player = Player.new(first_name: fname, last_name: lname)
end

When(/^I add the player to the pinboard$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^pinboard  should include player$/) do
    pending # express the regexp above with the code you wish you had
end
