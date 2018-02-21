Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'

  resources :users, except: :new

  get       '/signup', to: 'users#new'
  get       '/login',  to: 'sessions#new'
  post      '/login',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
end
