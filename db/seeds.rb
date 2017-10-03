User::delete_all

20.times do |n|
	name = "User##{n}"
	User.create!(name: name)
end