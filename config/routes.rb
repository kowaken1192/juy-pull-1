Rails.application.routes.draw do
  
  resources :profiles
  devise_for :users
  resources :users
  resources :posts
  root "posts#index"
  get   "posts/index"

  

  get '/users', to: 'users#index'
  resource :account, only: [:edit, :update]
  get '/account', to: 'accounts#show'
  resource :profile,only: %i[show edit update]
  patch 'profile', to: 'profiles#show'
  resources :users, only: [:show, :edit, :update]
end