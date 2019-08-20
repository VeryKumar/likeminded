Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :tests, only: [:index, :new, :create, :show, :delete]
resources :users, only: [:index, :show]
resources :groups, only: [:index, :show]
end

