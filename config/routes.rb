Rails.application.routes.draw do
  resources :users
  resources :setups
  get "/homepage", to: "application#homepage"
  get "/user/profile", to: "users#profile"
  # get "/user/quiz", to: "users#quiz"
  # patch "/setups", to: "setups#create"
  # post "/setups", to: "setups#select"
  get '/setups/[:id]/destroy', to: 'setups#destroy'
  get "/parts/display/:id", to: "parts#display"
  get "/sign_in", to: "sessions#sign_in"
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  get '/setuppart/destroy', to: 'setup_parts#destroy'
  post '/setuppart/destroy', to: 'setup_parts#destroy'
  get '/setups/[:id]/edit', to: 'setups#edit'


  resources :application
  resources :setup_parts
  resources :categories
  resources :parts
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
