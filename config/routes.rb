Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'posts#index'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  namespace :admin do
    resources :users
    resources :posts
  end
end
