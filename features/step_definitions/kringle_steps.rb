def create_participant
  @participant = {email: "example@example.com"}
end

Given /^There is no user with my email address$/ do
  create_visitor
  delete_user
end

Given /^I have already created a kringle$/ do
  visit '/'
end

When /^I visit the homepage$/ do
  visit '/'
end

When(/^I click on the kringle$/) do
#  click_link(kringle_path(@kringle))
end

When /^I enter my email$/ do
  fill_in "user[email]", with: @visitor[:email]
end

When /^a password$/ do
  fill_in "user[password]", with: @visitor[:password]
  fill_in "user[password_confirmation]", :with => @visitor[:password]
end

When /^I enter some participants$/ do
  create_participant
  fill_in "participants", with: @participant[:email]
end

When /^submit the page$/ do
 click_button "Create Kringle"
end

Then /^I should see the kringle management page$/ do
#  page.should have_content("Manage your Kringle")
end


