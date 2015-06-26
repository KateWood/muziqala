require 'rails_helper'

feature "Search Spotify" do
	scenario "returns search results for artist" do
      visit root_path
      fill_in "search_keywords", with: "queen"
      select 'Artist', from: "search"
      click_button "Search"
      expect(page).to have_content("Artists Matching queen")
    end

    scenario "returns search results for album" do
      visit root_path
      fill_in "search_keywords", with: "queen"
      select 'Album', from: "search"
      click_button "Search"
      expect(page).to have_content("Albums Matching queen")
    end

    scenario "returns search results for track title" do
      visit root_path
      fill_in "search_keywords", with: "bohemian rhapsody"
      select 'Track', from: "search"
      click_button "Search"
      expect(page).to have_content("Song Titles Matching bohemian rhapsody")
    end
end