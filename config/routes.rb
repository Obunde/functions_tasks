require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
