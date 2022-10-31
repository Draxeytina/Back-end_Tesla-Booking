Rails.application.routes.draw do
  resources :users
  resources :cars

  get 'users/:id/reserved_cars', :to => 'users#reserved_cars'
  get 'reservations', :to => 'reservations#index'
  post 'cars/create', :to => 'cars#create'
  post 'reservations/create', :to => 'reservations#create'
  delete 'cars/:id', :to => 'cars#destroy'

  root to: 'users#index'
  # login system routes
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
end
