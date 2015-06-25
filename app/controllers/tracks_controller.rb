class TracksController < ApplicationController
  def index
  	@tracks = Track.all
  end

  def new
  	@track = Track.new
  end

  def create
  	@track = Track.new({
  		track_name: track_name,
  		track_uri: track_uri,
  		artist_name: artist_name,
  		album_id: album_id,
  		duration_ms: duration_ms
  		})
  end
end
