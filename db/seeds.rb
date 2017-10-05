User::delete_all
Friendship::delete_all

20.times do |n|
	name = Faker::Pokemon.name
	User.create!(name: name)
end

User.all.each do |user|
	10.times do
		friendship 						 = user.friendships.new
		friendship.friended_id = User.all.sample.id
		friendship.accepted    = true
		friendship.save
	end
end