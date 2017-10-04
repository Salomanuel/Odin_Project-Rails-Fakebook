require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user 	= users(:manuel)
		@user2 	= users(:marion)
	end

	# test "should redirect users index when not logged in" do
	# 	skip
	# 	get users_path
	# 	assert redirected_to login_path
	# end

end