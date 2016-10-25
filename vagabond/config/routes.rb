Rails.application.routes.draw do
  # root to: "/login" => 'sessions#new'
  resources :sessions
  resources :users
  resources :posts

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  #
  # resources :cities

  # post '/users', to: 'users#create'

  # get 'users/new', to: 'users#new', as: 'new_user'

  # get 'users/edit'

  # get 'users/show'


  #
  resources :users do
    resources :posts, only: [:new, :edit, :index, :show]
  end
end
