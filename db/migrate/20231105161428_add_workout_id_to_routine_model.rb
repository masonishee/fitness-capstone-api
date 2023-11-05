class AddWorkoutIdToRoutineModel < ActiveRecord::Migration[7.0]
  def change
    add_column :routines, :workout_id, :integer
  end
end
