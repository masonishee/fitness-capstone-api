class WorkoutSchedulesController < ApplicationController
  before_action :authenticate_user

  def index
    @workout_schedules = current_user.workout_schedules.all
    render json: @workout_schedules
  end

  def create
    @workout_schedule = current_user.workout_schedules.create(workout_schedule_params)
    render json: @workout_schedule
  end

  def show
    @workout_schedule = current_user.workout_schedules.find_by(id: params[:id])
    render json: @workout_schedule
  end

  def update
    @workout_schedule = current_user.workout_schedules.find_by(id: params[:id])
    @workout_schedule.update(workout_schedule_params)
    render json: @workout_schedule
  end

  def destroy
    @workout_schedule = current_user.workout_schedules.find_by(id: params[:id])
    @workout_schedule.destroy
    head :no_content
  end

  private

  def workout_schedule_params
    params.require(:workout_schedule).permit(:date, :workout_id)
  end
end
