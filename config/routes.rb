Rails.application.routes.draw do

  devise_for :views
  devise_for :users
  get 'pages/about'

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

  # Pages
  get '/about', to: 'pages#about'
end
