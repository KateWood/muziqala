module API
  class TracksController < ApplicationController
      def index
        @tracks = Track.all
        respond_to do |format|
         format.html {
             render text: "Your data was sucessfully loaded. Thanks"
         }
         format.json {
             render json: @tracks
         }
        end
      end

      def new
        @track = Track.new
      end

      def create
        @track = Track.create(track_params)
        respond_to do |format|
         format.html {
             render
         }
         format.json {
             render json: @track
         }
        end
        render json: track, status: 201, location: [:api, track]
        render json: track.errors, status: 422
        redirect_to playlists_path
      end

  private
      def track_params
          params.require(:track).permit(:spotify_id)
      end

  end
end
