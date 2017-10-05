class UsersController < ApplicationController
	include SessionsHelper
	# before_action :logged_in_user, except: [:new, :create]

	def index
		@users = User.all
	end

	def show
		@user  			= User.find(params[:id])
		@friendship = current_user.friendships.new
	end

	def new
		@user  = User.new
	end

	def create
		@user  = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render inline: "<h1>Oh no</h1>"
		end
	end

	private
		def user_params
			params.require(:user).permit(:name)
		end

		def logged_in_user
			unless logged_in?
				redirect_to login_path
			end
		end
end
