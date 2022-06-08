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
  post 'users/:user_id/posts', to: 'posts#create'
  get 'users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
end
