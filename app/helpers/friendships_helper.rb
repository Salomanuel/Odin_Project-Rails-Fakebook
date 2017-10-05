module FriendshipsHelper

	def im_friend_of(user)
		return true if current_user.friendships.find_by(friended_id: user.id)
		return false
	end
end