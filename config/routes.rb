Rails.application.routes.draw do

	root 'base#index'
	get 	'/about', 		to: 'base#about'

	# sessions
	get 	'/login',   	to: 'sessions#new'
	post 	'/login', 		to: 'sessions#create'
	get 	'/logout',  	to: 'sessions#destroy'

	# users	
	resources :users, :only				=> [:index, :show, :create]
	get 	'/signup', 		to: 'users#new'
	
	# friendships
	resources :friendships, :only => [:create]
	get		'/unfriend',	to: 'friendships#destroy'

end
