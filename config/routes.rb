Rails.application.routes.draw do

	root 'base#index'
	get '/about', 	to: 'base#about'
	get '/signup', 	to: 'users#new'
	get '/login',   to: 'sessions#new'
	get '/logout',  to: 'sessions#destroy'
	
	resources :users, :only	=> [:index, :show, :create]

end
