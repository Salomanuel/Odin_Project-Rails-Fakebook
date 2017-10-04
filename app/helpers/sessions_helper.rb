module SessionsHelper
	def log_in(user) # writes the session cookie
		session[:user_id] = user.id
	end
end
