require 'test_helper'

feature 'Home page' do
# Scenario: Visit the home page
# Given I am a visitor
# When I visit the home page
# Then I see "Welcome"
scenario 'visit the home page' do
visit root_path
page.must_have_content 'Stay'
end
end