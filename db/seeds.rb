User.create!(name: "Mason", email: "mason@test.com", password: "password", image_url: "test.jpg")
User.create!(name: "Peter", email: "peter@test.com", password: "password", image_url: "test.jpg")
User.create!(name: "Dummy", email: "dummy@test.com", password: "password", image_url: "test.jpg")

Exercise.create!(name: "Bench Press", description: "This exercise will target the outer swoop of your chest.", image_url: "test.jpg", video_url: "test.jpg")
Exercise.create!(name: "Back Squat", description: "This exercise will target the the quads, hamstrings, and/or glutes.", image_url: "test.jpg", video_url: "test.jpg")
Exercise.create!(name: "Tricep Extension", description: "This exercise will target the longhead of the trciep.", image_url: "test.jpg", video_url: "test.jpg")

Routine.create!(user_id: 1, exercise_id: 1, reps: 12)
Routine.create!(user_id: 2, exercise_id: 2, reps: 15)
Routine.create!(user_id: 3, exercise_id: 3, reps: 10)
