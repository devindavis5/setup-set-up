Rails.application.routes.draw do
  resources :users
  get "/homepage", to: "application#homepage"
  get "/user/profile", to: "users#profile"
  get "/user/quiz", to: "users#quiz"
  # patch "/setups", to: "setups#create"
  post "/setups", to: "setups#select"

  get "/sign_in", to: "sessions#sign_in"
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :application
  resources :setup_parts
  resources :categories
  resources :parts
  resources :setups
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
