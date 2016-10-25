Rails.application.routes.draw do
  root "/login" => 'sessions#new'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/index'

  get 'posts/show'

  get 'cities/new'

  get 'cities/edit'

  get 'cities/index'

  get 'cities/show'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
