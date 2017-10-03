class UsersControllerTest < ActionDispatch::IntegrationTest

	test "it should have an index page" do
		get users_path
		assert_response :success
		assert_select "title", "All Users"
		assert_select "h1", "All Users"
	end

	test "it should have a profile page" do
	end



end
