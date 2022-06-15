Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user_show'
  get '/users/:id/new', to: 'users#new'
  post '/users/:id', to: 'users#create'
  get 'users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get 'users/:user_id/posts/new', to: 'posts#new'
  post 'users/:user_id/posts', to: 'posts#create', as: 'post_create'
  get 'users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  delete 'users/:user_id/posts/:id', to: 'posts#destroy', as: 'user_destroy'
  post 'users/:user_id/posts/:id/comment', to: 'comments#create', as: 'post_comments'
  get 'users/:user_id/posts/:id/comment/:comment_id', to: 'comments#show', as: 'user_post_comment'
  delete 'users/:user_id/posts/:id/comment/:comment_id', to: 'comments#destroy', as: 'comment_destroy'
  post 'users/:user_id/posts/:id/like', to: 'likes#create', as: 'post_likes'
end
