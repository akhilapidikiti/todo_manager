Rails.application.routes.draw do
  post "todos", to: "todos#create"
  get "todos/:id", to: "todos#show"
  post "users/login", to: "users#login"
  get "todos", to: "todos#index"
  get "/" => " root home#index"
  resources :users
end
