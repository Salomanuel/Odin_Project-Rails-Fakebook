require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "Manuel")
	end

	test "it should be valid" do
		assert @user.valid?
	end

	test "it should have a name, not too long" do
		@user.name = "    "
		assert_not @user.valid?
		@user.name = "a" * 20
		assert_not @user.valid?
	end
end
