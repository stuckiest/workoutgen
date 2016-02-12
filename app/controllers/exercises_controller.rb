class ExercisesController < ApplicationController
  
  def index
    @exercises = Exercise.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
