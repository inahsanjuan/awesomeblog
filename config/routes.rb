Rails.application.routes.draw do
  get 'user/new'

  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'

  # For details on the DSL availaable within this file, see http://guides.rubyonrails.org/routing.html
end
