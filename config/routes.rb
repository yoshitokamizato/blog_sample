Rails.application.routes.draw do
  devise_for :users

  root to: 'blogs#index'

  resources :blogs
  resources :users
end
