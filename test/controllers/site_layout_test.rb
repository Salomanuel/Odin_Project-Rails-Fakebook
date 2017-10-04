# require 'test-helper'

class BaseControllerTest < ActionDispatch::IntegrationTest

	test "should get home" do
		get root_path
		assert_response :success
		assert_select "title", 	"Home"
		assert_select "h1", 		"Home"
	end

	test "should get about" do
		get about_path
		assert_response :success
		assert_select "title", 	"About"
		assert_select "h1", 		"About"
	end

	test "should get signup" do
		get signup_path
		assert_response :success
		assert_select "title", 	"Sign Up"
		assert_select "h1", 		"Sign Up"
	end

	test "should get login" do
		get login_path
		assert_response :success
		assert_select "title", 	"Log In"
		assert_select "h1", 		"Log In"
	end
end
