Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:show]
  resources :lessons, only: [:create, :edit, :update]
  get '/users/:id/dashboard', to: 'users#dashboard'
  post '/reviews', to: 'reviews#create'
end
