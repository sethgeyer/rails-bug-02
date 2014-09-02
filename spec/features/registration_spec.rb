require 'rails_helper'
require 'capybara/rails'

feature 'Registration' do

  scenario 'Visitor can register' do
    visit "/registrations/new"
    fill_in "Name", with: "Seth"
    fill_in "Email", with: "seth@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Confirm", with: "password"
    click_button "Register"
    expect(page).to have_content("Welcome seth@gmail.com")
  end

end
