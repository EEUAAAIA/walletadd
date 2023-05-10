Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users

  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root "home#index"

  resources :addresses
  resources :blockchains
  resources :wallets
  resources :wallet_adresses

  resources :user_blockchains
  resources :user_wallets
  resources :user_addresses


end
