Rails.application.routes.draw do

  get 'sessions/new'

  resources :posts
  resources :users

  root 'posts#index'

  get 'new', to: 'posts#new'

  # Users
  get '/signup', to: 'users#new'
  get '/signup', to: 'users#create'

  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
