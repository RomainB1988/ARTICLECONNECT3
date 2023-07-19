# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create]
  end
end
