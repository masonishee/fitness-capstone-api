json.id @workout_schedule.id
json.date @workout_schedule.date
json.workouts @workout_schedule.workouts do |workout|
  json.id workout.id
  json.name workout.name
end
