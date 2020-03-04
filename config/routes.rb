Rails.application.routes.draw do
  
  resources :order_joiners
  resources :orders
  resources :cart_joiners
  resources :carts
  resources :reviews
  resources :items
  resources :users

  post '/login', to: "users#login"
  get '/persist', to: "users#persist"
  post '/charges', to: 'charges#create'
end