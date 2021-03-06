Rails.application.routes.draw do
  root to: 'toppages#index'
  get 'toppages/index'

  resources :users
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end