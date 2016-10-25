Rails.application.routes.draw do
 root "sessions#new"

 get '/login' => 'sessions#new'

 post '/login' => 'sessions#create'

 delete '/logout' => 'sessions#destroy'

 get 'cities/new'

 get 'cities/edit'

 get 'cities/index'

 get 'cities/show'

 resources :users

 # post '/users', to: 'users#create'

 # get 'users/new', to: 'users#new', as: 'new_user'

 # get 'users/edit'

 # get 'users/show'



 resources :users, only: [] do
   resources :posts, only: [:new, :edit, :index, :show]
 end

end
