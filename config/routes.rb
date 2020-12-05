Rails.application.routes.draw do
  
  get 'card/new'
  get 'card/show'
  root 'items#index'
  get 'items/create'
  devise_for :users, controllers: { registrations: 'users/registrations' }


  resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'category/get_category_children', to: 'items#get_category_children', defaults: { format: 'json' }
      get 'category/get_category_grandchildren', to: 'items#get_category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'done'
      get 'purchase'
    end
  end

  resources :users, only: [:show]
  get "users/:id/credit", to: "users#credit"
  get "users/:id/logout", to: "users#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cards, only: [:create, :show, :new, :destroy] do
    collection do
      post 'show'
      post 'new'
    end
    member do
      get 'confirmation'
    end
  end 

end
