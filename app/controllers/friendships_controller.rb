class FriendshipsController < ApplicationController
	include SessionsHelper
	include FriendshipsHelper

	def create
		@friendship = current_user.friendships.new(friendship_params)
		if @friendship.save
			# reverse friendship
			@friendship.friended.friendships.new(friended_id: current_user.id).save
			redirect_to @friendship.friended
		else
			render inline: "<h1>oh no</h1"
		end
	end

	def destroy
		friendship  = Friendship.find(params[:id])
		ex_friend   = friendship.friended
		friendship.destroy

		# reverse friendship
		friendship2 = Friendship.find_by(friended: current_user, friender: ex_friend)
		friendship2.destroy

		redirect_to ex_friend
	end

	private
		def friendship_params
			params.require(:friendship).permit(:friended_id)
		end
end