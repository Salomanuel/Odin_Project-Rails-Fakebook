class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user  = User.find(params[:id])
	end

	def new
		@user  = User.new
	end

	def create
		@user  = User.new(user_params)
		if @user.save
			render inline: "<h1>Good to go</h1>"
		else
			render inline: "<h1>Oh no</h1>"
		end
	end

	private
		def user_params
			params.require(:user).permit(:name)
		end

end
