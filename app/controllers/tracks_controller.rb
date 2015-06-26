class TracksController < ApplicationController
    def index
    	@tracks = Track.all
    end

    def new
    	@track = Track.new
    end

    def create
        @track = RSpotify::Track.find_by(params[:id])
        if Track.where(:spotify_id => @track["id"]).first
            redirect_to artist_show_path
        else
            @track = Track.create(:spotify_id => @track["id"])
            redirect_to artist_show_path
        end
    end

end
