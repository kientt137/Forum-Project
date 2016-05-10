# Given(/^I go to the sign up page$/) do
#    visit signup_path
# end
#
# When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
#   fill_in(field, with: value, :match => :prefer_exact)
# end
#
# When(/^I press "([^"]*)"$/) do |button|
#   click_button (button)
# end
#
# Then(/^I should see the user page$/) do
#   expect(page).to have_content("Wellcome, Nguyen Van B")
# end
#
#
# Then(/^I should see a error message\.$/) do
#   expect(page).to have_content("Email has already been taken")
# end
#
# # And(/^I logout to the forum$/) do
# #   find('Log out').click
# # end
#
# When(/^I fill in "([^"]*)" with (.*)$/) do |arg, name|
#   pending
# end
#
# Then(/^I should see (.*)$/) do |error_message|
#   expect(page).to have_content(error_message)
# end