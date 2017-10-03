Rails.application.routes.draw do

	root 'base#index'
	get '/about', 	to: 'base#about'
	get '/signup', 	to: 'users#new'
	
	resources :users, :only	=> [:index, :show, :create]

end
