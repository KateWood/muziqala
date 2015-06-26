class UsersController < ApplicationController
	
	# Shows all users
	def index
		@users = User.all
	end

	# Sets which user is shown on profile page
	def show
		@user = User.find(params[:id])
	end

end
