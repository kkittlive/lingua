Rails.application.routes.draw do
  get '/users/dashboard', to: 'users#dashboard'
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:show, :edit, :update]
  resources :lessons, only: [:create, :edit, :update]
  post '/reviews', to: 'reviews#create'
end
