User::delete_all
Friendship::delete_all

20.times do |n|
	name = "User##{n}"
	User.create!(name: name)
end

User.all.each do |user|
	10.times do
		user.friendships.new(friended_id: User.all.sample.id).save
	end
end