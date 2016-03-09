class WorkoutsController < ApplicationController
  def index
  	@workout = Workout.all
  end

  def show
  	@workout = Workout.find(params[:id])
  end

  def new
  	@workout = Workout.new
  end

  def create
  	@workout = Workout.new(workout_params)
  	if @workout.save
  		redirect_to workouts_path
  	else
  	render :new
  	end	
  end

  def edit
  	@workout = Workout.find(params[:id])
  end

  def update
  	@workout = Workout.find(params[:id])
  	if @workout.update(workout_params)
  		redirect_to workouts_path
  	else
  	render :edit
  	end	
  end

  def destroy
  	@workout = Workout.find(params[:id])
  	@workout.destroy
  	redirect_to workouts_path
  end
end

private
  def workout_params
    params.require(:workout).permit(:name, :description)
  end
