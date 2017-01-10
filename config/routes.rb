Rails.application.routes.draw do
  resources :posts

  root 'posts#index'
  get 'posts/index' => 'posts#new'
  get 'posts/show' => 'posts#show'

end
