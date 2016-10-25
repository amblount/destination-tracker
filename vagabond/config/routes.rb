Rails.application.routes.draw do
  root "sessions#new"

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/index'

  get 'posts/show'

  get 'cities/new'

  get 'cities/edit'

  get 'cities/index'

  get 'cities/show'

  resources :users

  # post '/users', to: 'users#create'

  # get 'users/new', to: 'users#new', as: 'new_user' 

  # get 'users/edit'

  # get 'users/show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
