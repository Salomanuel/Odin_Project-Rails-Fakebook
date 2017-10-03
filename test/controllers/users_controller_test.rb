class UsersControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user  = users(:manuel)
		@user2 = users(:marion)
	end

	test "it should have an index page" do
		get users_path
		assert_response :success
		assert_select "title", "All Users"
		assert_select "h1", "All Users"
	end

	test "it should have a profile page" do
		get user_path(@user)
		assert_response :success
		assert_select "title", "#{@user.name}"
		assert_select "h1", "#{@user.name}"
	end

	test "it should have a signup page" do
		get signup_path
		assert_response :success
		assert_select "title", "Sign Up"
		assert_select "h1", "Sign Up"
	end




end
