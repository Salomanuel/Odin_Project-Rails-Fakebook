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
end