Rails.application.routes.draw do
  get 'users/new'

  get 'users/show'

  get 'user/new'

  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'

  resources :users
  # For details on the DSL availaable within this file, see http://guides.rubyonrails.org/routing.html
end
