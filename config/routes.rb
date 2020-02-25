Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:show]
  resources :lessons, only: [:create, :edit, :update]
  get '/users/account', to: 'users#account'
  post '/reviews', to: 'reviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
