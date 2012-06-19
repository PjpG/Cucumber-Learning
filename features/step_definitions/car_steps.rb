Given /^I have cars titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Car.create!(title: title)
  end
end

When /^I go to (.+)$/ do |cars|
  cars
end

Then /^I should see "(.*?)"$/ do |cars| 
  visit cars_path
  should have_content("Audi")
  should have_content("Ford")
end

Given /^I have no cars$/ do
  Car.delete_all
end

Given /^I am on (.+)$/ do |cars|
  cars
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end
