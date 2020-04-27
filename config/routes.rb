Rails.application.routes.draw do
  
  resources :order_joiners
  resources :orders
  resources :cart_joiners
  resources :carts
  resources :reviews
  resources :items
  resources :users
# custom routes from login in, persisting user and for charging payment with Stripe API.
  post '/login', to: "users#login"
  get '/persist', to: "users#persist"
  post '/charges', to: 'charges#create'
end