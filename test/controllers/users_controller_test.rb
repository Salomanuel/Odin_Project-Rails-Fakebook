class UsersControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user  = users(:manuel)
		@user2 = users(:marion)
	end

	test "it should have a signup page" do
		get signup_path
		assert_response :success
		assert_select "title", "Sign Up"
		assert_select "h1", "Sign Up"
	end




end
