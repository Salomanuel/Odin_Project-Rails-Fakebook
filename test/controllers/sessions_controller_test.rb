require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user 	= users(:manuel)
		@user2 	= users(:marion)
	end

	test "should redirect restricted pages when not logged in" do
		skip
		get about_path
		assert_select "h1", "About"
		get users_path
		assert_redirected_to login_path
		get user_path(@user)
		assert_redirected_to login_path
	end

	test "it should have a profile and an index page when logged in" do
		get login_path
		post login_path params: { session: { name: @user.name } }
		get users_path
		assert_response :success
		assert_select "title", "All Users"
		assert_select "h1", "All Users"
		get user_path(@user)
		assert_response :success
		assert_select "title", "#{@user.name}"
		assert_select "h1", "#{@user.name}"
	end

end