Rails.application.routes.draw do
  
  root 'items#index'
  devise_for :users
  

  resources :items, only: [:new, :create]
  resources :users, only: [:show]
  get "users/:id/logout", to: "users#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
