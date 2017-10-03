# require 'test-helper'

class BaseControllerTest < ActionDispatch::IntegrationTest

	test "should get home" do
		get root_path
		assert_response :success
		assert_select "title", "Home"
		assert_select "h1", "Home"
	end

	test "should get about" do
		get about_path
		assert_response :success
		assert_select "title", "About"
		assert_select "h1", "About"
	end

end
