require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	def setup
		@user		= users(:manuel)
		@user2	= users(:marion)
	end

	test "layout links while NOT logged in" do
		get root_path
		assert_select "a[href=?]", root_path
		# assert_select "a[href=?]", about_path
		assert_select "a[href=?]", signup_path
		assert_select "a[href=?]", login_path
		assert_select "a[href=?]", logout_path, count: 0
	end

	test "layout links while logged in" do
		# skip
		get login_path
		assert_select "h1", "Log In"
		post login_path, params: { session: { name: @user.name } }
		# puts "UOOOOOOOO"
		# puts "current_user.nil? #{current_user.nil?}"
		assert_not current_user.nil?
		get root_path
		assert_select "a[href=?]", root_path
		# assert_select "a[href=?]", about_path
		assert_select "a[href=?]", signup_path, count: 0
		assert_select "a[href=?]", login_path,  count: 0
		assert_select "a[href=?]", logout_path
	end
end