require 'rails_helper'

feature "Search Spotify" do
	scenario "returns search results for artist" do
      visit root_path
      fill_in "search_keywords", with: "queen"
      choose 'search_artist'
      click_button "Search"
      expect(page).to have_content("Artists Matching queen")
    end

    scenario "returns search results for album" do
      visit root_path
      fill_in "search_keywords", with: "queen"
      choose 'search_album'
      click_button "Search"
      expect(page).to have_content("Albums Matching queen")
    end
end