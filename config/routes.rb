Rails.application.routes.draw do

	root 'base#index'
	get 	'/about', 		to: 'base#about'

	get 	'/login',   	to: 'sessions#new'
	post 	'/login', 		to: 'sessions#create'
	get 	'/logout',  	to: 'sessions#destroy'

	get 	'/signup', 		to: 'users#new'

	resources :users, only: [:index, :show, :create] do
		member do
			get :friender, :friended
		end
	end

	resources :friendships, only: [:create, :destroy]
end
