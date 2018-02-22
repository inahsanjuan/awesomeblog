Rails.application.routes.draw do
  root 'static_pages#home'

  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'

  resources :users, except: [:new, :put]

  get       '/signup', to: 'users#new'
  get       '/login',  to: 'sessions#new'
  post      '/login',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
end
