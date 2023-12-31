class RoutinesController < ApplicationController
  before_action :authenticate_user

  def index
    @routines = current_user.routines.all
    render :index
  end

  def create
    @routine = Routine.create(
      reps: params[:reps],
      exercise_id: params[:exercise_id],
      workout_id: params[:workout_id],
      user_id: current_user.id,
    )
    render :show
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render :show
  end
end
