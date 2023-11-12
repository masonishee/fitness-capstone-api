class WorkoutsController < ApplicationController
  before_action :authenticate_user

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

  def show_by_date
    date_param = params[:date]
    @workouts = Workout.where(scheduled_date: date_param)
    render json: @workouts
  end

  def index_by_date
    date_param = params[:date]

    target_date = Date.strptime(date_param, "%Y-%m-%d")

    workouts = Workout.where("scheduled_date = ?", target_date)

    render json: workouts
  end

  private

  def set_date
    @date = Date.parse(params[:date])
  end
end
