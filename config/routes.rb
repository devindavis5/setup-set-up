Rails.application.routes.draw do
  resources :setup_parts
  resources :categories
  resources :parts
  resources :setups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
