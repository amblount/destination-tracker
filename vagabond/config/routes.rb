Rails.application.routes.draw do
  root "sessions#new"

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get 'cities/new'

  get 'cities/edit'

  get 'cities/index'

  get 'cities/show'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  resources :users, only: [] do
    resources :posts, only: [:new, :edit, :index, :show]
  end
end
