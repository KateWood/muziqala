require 'rails_helper'

feature "Save Track to Database" do

    scenario "add a track to the tracks database" do
        visit root_path
        fill_in "search_keywords", with: "bohemian rhapsody"
        select 'Track', from: "search"
        click_button "Search"
        expect{first(:button, "Add to Playlist").click}.to change(Track, :count).by(1)
    end

end