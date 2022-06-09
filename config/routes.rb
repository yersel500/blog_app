Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/:id/new', to: 'users#new'
  post '/users/:id', to: 'users#create'
  get 'users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get 'users/:user_id/posts/new', to: 'posts#new'
  post 'users/:user_id/posts', to: 'posts#create'
  get 'users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  post 'users/:user_id/posts/:id/comment', to: 'comments#create', as: 'post_comments'
  post 'users/:user_id/posts/:id/like', to: 'likes#create', as: 'post_likes'
end
