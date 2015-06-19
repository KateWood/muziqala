class UsersController < ApplicationController
	# Sets user for show, edit, update, and destroy using user_params
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	# Shows all users
	def index
		@users = User.all
	end

	# Sets user on sign up page
	def new
		@user = User.new
	end

	# Creates a user upon sign up
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

private
	# Defines user params for use in controller actions
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end
