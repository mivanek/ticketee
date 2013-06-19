Given /^I am on the homepage$/ do
  visit '/'
end

When /^I follow "New Project"$/ do
  click_link "New Project"
end

And /^I fill in "Name" with "TextMate 2"$/ do
  fill_in('Name', with: 'TextMate 2')
end

And /^I press "Create Project"$/ do
  click_button "Create Project"
end

Then /^I should see "Project has been created"$/ do
  page.should have_content "Project has been created"
end

And /^I should be on the project page for "(.+)"$/ do |page|
  id = Project.find_by_name(page).id
  visit project_path(id)
end

And /^I should see the "(.+)" title$/ do |title|
  page.should have_title title
end
