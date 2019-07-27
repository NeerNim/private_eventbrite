Rails.application.routes.draw do
  root  'events#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'  
  delete '/logout', to: 'sessions#destroy'
  post '/event/:id', to: 'events#show'
  get 'user_events', to: 'events#user_events'
  resources :users
  resources :events
end
