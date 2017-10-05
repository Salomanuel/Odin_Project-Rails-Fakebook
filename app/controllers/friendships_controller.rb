class FriendshipsController < ApplicationController
	include SessionsHelper

	def create
		@friendship = current_user.friendships.new(friendship_params)
		if @friendship.save
			redirect_to current_user
		else
			render inline: "<h1>oh no</h1"
		end
	end

	def destroy
		@friendship = current_user.friendships.find_by(friended_id: @user.id).destroy
		redirect_to @user
	end

	private
		def friendship_params
			params.require(:friendship).permit(:friended_id)
		end
end