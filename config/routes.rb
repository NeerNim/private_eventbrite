Rails.application.routes.draw do
  root  'events#index'
  resources :users
  resources :events

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
