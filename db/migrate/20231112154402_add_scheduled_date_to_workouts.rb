class AddScheduledDateToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :scheduled_date, :date
  end
end
