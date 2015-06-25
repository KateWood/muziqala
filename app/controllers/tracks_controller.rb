class TracksController < ApplicationController
    def index
    	@tracks = Track.all
    end

    def new
    	@track = Track.new
    end

    def create
        @track = Track.new(params[:id])
        @track.save
    end

end
