Rails.application.routes.draw do
  root 'items#index'

  # get '/home', to: 'items#home'
  # post '/items', to: 'items#create'
  # patch '/items', to: 'items#update'
  resources :items, only: [:index, :create, :update]
  resources :categories, only: [:create]
  # post '/categories', to: 'categories#create'
end
