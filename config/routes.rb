Rails.application.routes.draw do

	root to: 'pages#index'



  devise_for :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :products, only: [:index, :show]
end