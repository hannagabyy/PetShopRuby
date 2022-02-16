Rails.application.routes.draw do
  get 'consulta/index'
  resources :pets
  resources :veterinarios
  # devise_for :users
  get 'home/index'
  # root 'home#index'
  resources :clientes

  get 'search', to:"consulta#search"

  root to: "home#index"
  devise_for :users, :sign_out_via => [ :get ]
  namespace :users do
     root :to  => 'home#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
