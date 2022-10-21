Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :cars

  get 'users/:id/reserved_cars', :to => 'users#reserved_cars'
  post 'cars/create', :to => 'cars#create'
  delete 'cars/:id', :to => 'cars#destroy'

  root to: 'users#index'
end
