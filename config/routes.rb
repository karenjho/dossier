Rails.application.routes.draw do

  root "posts#index"

  resources :posts
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
