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

	private
		def friendship_params
			params.require(:friendship).permit(:friender_id, :friended_id)
		end
end