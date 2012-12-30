@participant = {email: "example@example.com"}

Given /^There is no user with my email address$/ do
  create_visitor
  delete_user
end

When /^I visit the homepage$/ do
  visit '/'
end

When /^I enter my email$/ do
  fill_in "Your email", with: @visitor[:email]
end

When /^a password$/ do
  fill_in "user_password", with: @visitor[:password]
  fill_in "user_password_confirmation", :with => @visitor[:password_confirmation]
end

When /^Another persons email$/ do
  fill_in "Invite some people", with: @participant[:email]
end

Then /^I should see the kringle management page$/ do
  page.should have_content "Manage your Kris Kringle"
end


