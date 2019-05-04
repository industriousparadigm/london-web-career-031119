Rails.application.routes.draw do
  resources :images, only: [:show]
  resources :comments, only: [:create, :destroy]

  post '/likes', to: 'images#increase_likes'
end
