Rails.application.routes.draw do
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :pages

	root to: 'pages#home'

  	# get 'apartments/index'
	# get 'groups/:id/apartments/', to: 'pages#:id'

	resources :groups do
		resources :apartments
	end

	post 'search/' => 'groups#search'
	# post 'search/', to: ‘groups#search'

end
