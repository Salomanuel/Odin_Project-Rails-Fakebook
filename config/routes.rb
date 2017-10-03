Rails.application.routes.draw do

	root 'base#index'
	get '/about', to: 'base#about'
	
	resources :users, :only	=> [:index, :show]

end
