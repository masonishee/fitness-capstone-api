Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/exercises" => "exercises#index"
  post "/exercises" => "exercises#create"
  get "/exercises/:id" => "exercises#show"

  get "/routines" => "routines#index"
  post "/routines" => "routines#create"
  get "/routines/:id" => "routines#show"

  get "/workouts" => "workouts#index"
  get "/workouts" => "workouts#create"
  get "/workouts/:id" => "workouts#show"
end
