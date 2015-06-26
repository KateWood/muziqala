class PlaylistsController < ApplicationController
  def index
    @playlist = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def show
    @playlist = Playlist.find(params[:id])
  end
  
  def create
    @playlist = Playlist.new(params.require(:playlist).permit(:name))

    if @playlist.save
      redirect_to @playlist
    else
      redirect_to new_playlist_path
    end
  end
  
end
