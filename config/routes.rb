Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'homes/top'
  get 'homes/about'
  root to:'homes#top'

  get '/users', to: 'users#index'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
