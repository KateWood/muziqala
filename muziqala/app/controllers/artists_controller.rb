class ArtistsController < ApplicationController
  def index

    if params[:album]
      @artists = RSpotify::Album.search(params[:artist_name])
    elsif  params[:artist]
      @artists = RSpotify::Artist.search(params[:artist_name])
    elsif  params[:track]
      @artists = RSpotify::Track.search(params[:artist_name])
    # if !params[:artist_name].empty?
    #  @artists = RSpotify::Artist.search(params[:artist_name])
   else
     redirect_to root_path
   end
  end

  def show
    @artist = RSpotify::Artist.find(params[:id])
  end
end
