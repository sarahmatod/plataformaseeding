Rails.application.routes.draw do
  devise_for :users
  root to: 'user_choices#new'
  get 'getavailable', to: "collections#getavailable"
  patch 'available', to: 'collections#available'
  get 'getunavailable', to: "collections#getunavailable"
  patch 'unavailable', to: 'collections#unavailable'

  resources :collections
  resources :items
  resources :votes
  resources :user_choices

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
