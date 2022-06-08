Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/:id/new', to: 'users#new'
  post '/users/:id/create', to: 'users#create'
  get 'users/:user_id/posts', to: 'posts#index'
  get 'users/:user_id/posts/:id', to: 'posts#show'
  get 'users/:user_id/posts/:id/new', to: 'posts#new'
  post 'users/:user_id/posts/:id/create', to: 'posts#create'
end
