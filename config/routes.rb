Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'corgis#index'
resources :users, only:[:create]
resources :corgis, only: [:index, :update, :create, :destroy]
post '/login', to: 'auth#create'

end
