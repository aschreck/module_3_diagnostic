require 'rails_helper'

describe "When a user inputs their zip code into the search" do
  it "return a list of nearby stations with criteria and information" do
    # As a user
    # When I visit "/"
    visit '/'
    # And I fill in the search form with 80203
    fill_in "q", with: 80203
    # And I click "Locate"
    click_on "Locate"
    # Then I should be on page "/search" with parameters visible in the url
    expect(current_path).to eq "/search"
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance

    # And the stations should be limited to Electric and Propane
    expect(page).to have_content("Electric")
    expect(page).to have_content("Propane")
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end 
end 