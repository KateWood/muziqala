require 'rails_helper'

feature "Search Spotify" do
	scenario "returns search results" do
      visit root_path
      fill_in "search_keywords", with: "queen"
      choose 'search_artist'
      click_button "Search"
      expect(page).to have_content("Artists Matching queen")
    end
end