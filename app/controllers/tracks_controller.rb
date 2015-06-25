class TracksController < ApplicationController
  def index
  	@tracks = Track.all
  end

  def new
  	@track = Track.new
  end

  def create
  end
end
