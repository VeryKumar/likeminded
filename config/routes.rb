Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tests
  resources :users
  resources :groups, only: [:index, :show]

  get '/users/:favoritee_id/favorite', to: "favorites#create"
  delete '/users/:favoritee_id/favorite', to: "favorites#destroy", as: :delete_favorite_user
  

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/profile', to: 'users#profile', as: 'profile'
  get '/profile/edit', to: 'users#edit', as: 'edit_profile'

end

