class WorkoutsController < ApplicationController
  def index
    @workouts = current_user.workouts.all
    render :index
  end

  def create
    @workout = Workout.create(
      name: params[:name],
      user_id: current_user.id,

    )
    render :show
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    render :show
  end
end
