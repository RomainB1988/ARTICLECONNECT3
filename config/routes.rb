Rails.application.routes.draw do
  get 'comments/create'
  get 'posts/index'
  get 'posts/show'
  get 'home/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
