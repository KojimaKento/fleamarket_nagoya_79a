Rails.application.routes.draw do
  
  root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }


  resources :items, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:show]
  get 'users/:id/credit', to: 'users#credit'
  get 'users/:id/logout', to: 'users#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
