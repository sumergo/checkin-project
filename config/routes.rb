Rails.application.routes.draw do
  root 'students#index'

  resources :students
  get '/index', to: 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
