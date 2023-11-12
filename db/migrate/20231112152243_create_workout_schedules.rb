class CreateWorkoutSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end

    create_table :workout_schedules_workouts, id: false do |t|
      t.belongs_to :workout_schedule
      t.belongs_to :workout
    end
  end
end
