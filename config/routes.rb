Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :cars

  root to: 'users#index'
end
