Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :cars

  get 'users/:id/reserved_cars', :to => 'users#reserved_cars'

  root to: 'users#index'
end
