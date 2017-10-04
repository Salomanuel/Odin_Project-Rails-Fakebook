require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user 	= users(:manuel)
		@user2 	= users(:marion)
	end

	test "should redirect restricted pages when not logged in" do
		get about_path
		assert_select "h1", "About"
		get users_path
		assert_redirected_to login_path
		get user_path(@user)
		assert_redirected_to root_path
	end

	test "should not redirect when logged in" do
	end

end