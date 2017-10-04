require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  # def log_in_as(user)
  # 	session[:user_id] = user.name
  # end

  def current_user			# not sure it works, I think it's a fake method, it just doesn't return NOT NIL
  	session[:user_id]
  end

  def logged_in?
  	current_user
  end
end
