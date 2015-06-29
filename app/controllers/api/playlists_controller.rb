module API
  class PlaylistsController < ApplicationController
    def index
      @playlist = Playlist.all
      respond_to do |format|
         format.html {
             render text: "Your data was sucessfully loaded. Thanks"
         }
         format.json {
             render json: @playlist
         }
      end
    end

    def new
      @playlist = Playlist.new

    end

    def show
      @playlist = Playlist.find(params[:id])
      respond_to do |format|
         format.html {
             render
         }
         format.json {
             render json: @playlist
         }
      end
      @tracks = Track.all
    end
    
    def create
      @playlist = Playlist.new(params.require(:playlist).permit(:name))
      respond_to do |format|
         format.html {
             render
         }
         format.json {
             render json: @playlist
         }
      end
      if @playlist.save
        render json: playlist, status: 201, location: [:api, playlist]
        redirect_to @playlist
      else
        render json: playlist.errors, status: 422
        redirect_to new_playlist_path
      end
    end

    def destroy
      @playlist = Playlist.find(params[:id])
      @playlist.destroy
      head 204
      redirect_to @playlist
    end
    
  end
end