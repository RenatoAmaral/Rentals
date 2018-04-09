Rails.application.routes.draw do

  root to: 'pages#index'



  resources :bookings
  resources :products


  devise_for :profiles,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {registrations: 'registrations'}



	resources :products, only: [:index, :show]
  resources :profiles, only: [:show]
end
