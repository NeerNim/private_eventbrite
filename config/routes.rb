Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :events

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
