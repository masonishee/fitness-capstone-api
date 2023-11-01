Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/exercises" => "exercises#index"
  post "/exercises" => "exercises#create"
  get "/exercises/:id" => "exercises#show"

  get "/routines" => "routines#index"
  get "/routines/:id" => "routines#show"
end
