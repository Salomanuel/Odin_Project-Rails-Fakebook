Rails.application.routes.draw do

	root 'base#index'
	get '/about', to: 'base#about'

end
