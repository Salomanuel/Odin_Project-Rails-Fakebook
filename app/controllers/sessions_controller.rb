class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(name: params[:session][:name]) # CHANGE THIS TO EMAIL
		if user
			# render inline: "<h1>found</h1>"
			log_in(user)
			redirect_to user
		else
			render 'new'
		end
	end

end