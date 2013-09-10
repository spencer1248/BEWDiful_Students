def create_user
  @user = User.create!(email: "example2@foo.com", password: "password", password_confirmation: "password")
end
def current_user
  if @user.nil?
    @user = create_user
  else
    @user = User.find_by_email("example2@foo.com")
  end
end

Given(/^I am a user$/) do
 @user =  current_user
    #@user = User.create(email: "example@foo.com", password: "password", password_confirmation: "password")
end

Given(/^I am signed in$/) do
    visit new_user_session_path
    fill_in "Email", :with => @user.email
    fill_in "Password", :with => "password"
    click_button "Sign in"
end

Given(/^I create a pinboard "(.*?)"$/) do |pinboard_name|
  @pinboard = @user.pinboards.create(name: pinboard_name, description: "Epl-Pinboard")
end

When(/^I visit my "(.*?)" page$/) do |dashboard_index|
    visit dashboard_index_path
end


Then(/^I should see my pinboard "(.*?)"$/) do |pinboard|  
  page.should have_content(pinboard)
end

Given(/^I have a pinboard$/) do
  @player = Player.new
  @pinboard = current_user.pinboards.create!(name: "Defenders", description: "EPl defenders")
  @pinboard.pin_player_to_board(@player)
   # @user = User.create(email: "example@foo.com", password: "password", password_confirmation: "password")
end

When(/^I visit pinboard page$/) do
    visit pinboard_path(@pinboard)
end

Then(/^I should see all my pinned players$/) do
  #page.should have_content(@pinboard.name)
  page.should have_content(@player.first_name)
  #5.times do
   #   Player.create!(first_name: "Mezit", last_name: "Ozil", jersey_number: "10",
   #                  height: "5'9", weight: "170lbs", date_of_birth: "June 10 1991",
    #                 place_of_birth: "Germany")
   # end

    #@players = Player.all
    #@players.each do |player|
     # @pinboard.pin_player_to_board(player)
    #end
    #page.should have_content("EPL Test")
end

