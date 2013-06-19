Given /^I am on the homepage$/ do
  visit '/'
end

When /^I follow "New Project"$/ do
  click_link "New Project"
end

And /^I fill in "Name" with "TextMate 2"$/ do
  fill_in('Name', with: 'TextMate2')
end

And /^I press "Create Project"$/ do
  click_button "Create Project"
end

Then /^I should see "Project has been created"$/ do
  page.should have_content "Project has been created"
end
