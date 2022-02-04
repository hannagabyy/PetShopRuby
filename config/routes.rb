Rails.application.routes.draw do
  # devise_for :users
  get 'home/index'
  # root 'home#index'
  resources :clientes

  root to: "home#index"
  devise_for :users, :sign_out_via => [ :get ]
  namespace :users do
     root :to  => 'home#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
