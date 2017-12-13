require 'rails_helper'

describe "When a user inputs their zip code into the search" do
  it "return a list of nearby stations with criteria and information" do
    visit '/'

    fill_in "q", with: 80203

    click_on "Locate"
    
    expect(current_path).to eq "/search"
    expect(page).to have_content("ELEC")
    expect(page).to have_content("count: 10")
  end 
end 