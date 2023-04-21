Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root "posts#index"
  resource :account, only: [:edit, :update]
  get '/account', to: 'accounts#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
