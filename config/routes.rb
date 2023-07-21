Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "chatroom#index"
  get "chatroom", to: "chatroom#show"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create" 
  delete "logout", to: "sessions#destroy"
  
  get "signup", to: "users#new"
  post "signup", to: "users#create"

  post 'message', to: 'messages#create'

  # Add Websocket route
  mount ActionCable.server, at: '/cable'
  
end
