Given(/^I a fan\/user$/) do
    @user = User.first
end
When(/^I visit my "(.*?)" page$/) do |dashboard_index|
    visit dashboard_index_path
end

Then(/^I should see all my created "(.*?)"$/) do |arg1|
    page.should have_content("#{arg1}")
end
