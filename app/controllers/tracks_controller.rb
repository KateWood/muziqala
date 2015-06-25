class TracksController < ApplicationController
    def index
    	@tracks = Track.all
    end

    def new
    	@track = Track.new
    end

    def create
        @track = Track.new(track_params)
        @track.save
    end

private
    def track_params
        params.require(:track).permit(:track_name, :track_uri, :artist_name, :album_id, :duration_ms)
    end

end
