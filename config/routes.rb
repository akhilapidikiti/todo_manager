Rails.application.routes.draw do
 get "todos/:id", to: "todos#show"
end
