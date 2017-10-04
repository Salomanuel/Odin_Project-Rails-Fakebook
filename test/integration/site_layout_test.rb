require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	def setup
		@user		= users(:manuel)
		@user2	= users(:marion)
	end
end