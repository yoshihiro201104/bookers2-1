Rails.application.routes.draw do

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'homes/about'
  root to:'homes#top'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'

  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
