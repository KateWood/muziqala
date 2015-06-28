require 'rails_helper'

feature "Create and Delete Playlists" do

    scenario "creates a new playlist" do
        visit new_playlist_path
        fill_in "playlist_name", with: "New Playlist"
        click_button "Create Playlist"
        expect(page).to have_content("New Playlist")
    end

    scenario "deletes a playlist" do
        playlist = FactoryGirl.create(:playlist)
        visit playlists_path
        first(:link, "Delete this playlist").click
        expect(page).not_to have_content(playlist)
    end
end