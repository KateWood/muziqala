class TracksController < ApplicationController
    def index
    	@tracks = Track.all
    end

    def new
    	@track = Track.new
    end

    def create
        @track = Track.create(track_params)
        redirect_to playlists_path
    end


private
    def track_params
        params.require(:track).permit(:spotify_id)
    end

end
