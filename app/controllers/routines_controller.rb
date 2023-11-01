class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    render :index
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render :show
  end
end
