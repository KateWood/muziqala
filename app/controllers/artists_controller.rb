class ArtistsController < ApplicationController
  def index
    #raise params.inspect
    if params[:search_keywords] == ""
      redirect_to root_path
    else

      @all = RSpotify::Album.search(params[:search_keywords]) && 
              RSpotify::Artist.search(params[:search_keywords]) &&
              RSpotify::Track.search(params[:search_keywords])

      #raise @all.inspect
      
      if params[:search] == "artist"
        @artists = RSpotify::Artist.search(params[:search_keywords])
      elsif  params[:search] == "album"
        @albums = RSpotify::Album.search(params[:search_keywords])
      elsif  params[:search] == "track"
        @tracks = RSpotify::Track.search(params[:search_keywords])
      elsif params[:search] == "all"
        @all
      # if !params[:artist_name].empty?
      #  @artists = RSpotify::Artist.search(params[:artist_name])
      else
       redirect_to root_path
      end
    end # blank string "if"
  end # of index action

  def show
    # @all = RSpotify::Artist.find(params[:id]) &&
    #         RSpotify::Album.find(params[:id]) &&
    #         RSpotify::Track.find(params[:id])

    if params[:type] == "artist"
      @artist = RSpotify::Artist.find(params[:id])
    elsif  params[:type] == "album"
      @album = RSpotify::Album.find(params[:id])
    elsif  params[:type] == "track"
      @track = RSpotify::Track.find(params[:id])
    # elsif params[:type] == "all"
    #   @all
     end
  end
end


#from @all

# search = @all.first.to_json

# parsed = JSON.parse(search)

#parsed["available_markets"]
