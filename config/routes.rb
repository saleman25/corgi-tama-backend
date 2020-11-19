Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'corgis#index'
resources :users
resources :corgis
post '/login', to: 'auth#create'

end
