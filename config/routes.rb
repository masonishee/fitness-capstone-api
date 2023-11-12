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
  post "/workouts" => "workouts#create"
  get "/workouts/:id" => "workouts#show"

  resources :workouts do
    collection do
      get "index_by_date"
    end
  end
  resources :workout_schedules

  get "/workouts/index_by_date", to: "workouts#index_by_date"
end
