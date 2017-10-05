module SessionsHelper
	def log_in(user) # writes the session cookie
		session[:user_id] = user.id
	end

  def current_user
  	# if it exists there, take it and call it a day
  	if 		(user_id = session[:user_id]) 
  		@current_user ||= User.find(user_id)
      return @current_user
    else
      return nil
  	end
  	# for sessions, it will become more complex
  end

  def logged_in?
  	!current_user.nil?
  end
end