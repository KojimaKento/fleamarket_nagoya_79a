Rails.application.routes.draw do
  root 'items#exhibitions'
  devise_for :users
  get 'mypages', to: 'mypages#show'
  get 'exhibitions', to: 'exhibitions#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
