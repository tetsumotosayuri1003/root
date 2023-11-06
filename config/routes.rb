Rails.application.routes.draw do
  resources :users
  root 'top#index'

  resources :welcomes, only: :index
  resource :login, only: [:new, :create]
  resources :tasks
  get '/logout', to: 'logouts#show'
end
