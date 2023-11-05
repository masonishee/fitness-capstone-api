class RoutinesController < ApplicationController
  before_action :authenticate_user

  def index
    @routines = Routine.all
    render :index
  end

  def create
    @routine = Routine.create(
      reps: params[:reps],
      exercise_id: params[:exercise_id],
      user_id: current_user.id,
    )
    render :show
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render :show
  end
end
