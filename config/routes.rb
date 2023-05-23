Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resources :posts



  namespace :admin do
    resources :users
    resources :posts
    root to: "users#index"
  end
end
