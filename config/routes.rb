Rails.application.routes.draw do
  #post "todos", to: "todos#create"
  get "todos/:id", to: "todos#show"
  #post "users/login", to: "users#login"
  get "todos", to: "todos#index"
  get "/" => "home#index"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  resources :todos
  resources :users
end
