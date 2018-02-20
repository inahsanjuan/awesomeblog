Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'
  get 'sessions/new'

  resources :users
  # For details on the DSL availaable within this file, see http://guides.rubyonrails.org/routing.html
end
