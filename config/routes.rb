Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "chatroom#index"
  get "chatroom", to: "chatroom#show"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create" 
  
end
