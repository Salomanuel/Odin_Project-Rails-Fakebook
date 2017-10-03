require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	test "valid signup" do
		get signup_path
		assert_difference "User.count", 1 do
			post users_path, params: 
				{ user: { name: "UMBERTO" } }
		end
	end

	test "invalid signup information" do
		get signup_path
		assert_no_difference 'User.count' do
			post users_path, params: 
				{ user: {	name: "" } }
		end
	end
end