When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see all of category and their description on the homepage$/) do
  t = Category.all
  t.each do |f|
    expect(page).to have_content(f.name)
    expect(page).to have_content(f.description)
  end
end