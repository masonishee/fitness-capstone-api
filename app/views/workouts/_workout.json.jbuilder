json.extract! workout, :id, :name
json.routines workout.routines, partial: "routines/routine", as: :routine
json.user workout.user
