Rails.application.routes.draw do
  get 'event_attendee/new'
  get 'event_attendee/create'
  get 'event_attendee/show'
  resources :sessions
  resources :users
  resources :events

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
