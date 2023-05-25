Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'posts#index'

  resources :posts



  namespace :admin do
    resources :users
    resources :posts
  end
end
