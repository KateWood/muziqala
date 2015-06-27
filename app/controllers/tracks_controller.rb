class TracksController < ApplicationController
    def index
    	@tracks = Track.all
    end

    def new
    	@track = Track.new
    end

    def create id
        @track = Track.create(:spotify_id => id)
        redirect_to artist_show_path
    end

end
