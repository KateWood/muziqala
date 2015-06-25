class TracksController < ApplicationController
  def index
  	@tracks = Track.all
  end

  def new
  end

  def create
  end
end
