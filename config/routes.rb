Rails.application.routes.draw do
  get 'comments/new'
  #get 'topics/new'
  #get 'sessions/new'
  #get 'users/new'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  #resources :favorites, only: [:index, :create, :destroy]
  
  get '/comments/:topic_id/new', to: 'comments#new', as: 'comments'
  post '/comments/:topic_id/create', to: 'comments#create', as:'comments_create'
  
end