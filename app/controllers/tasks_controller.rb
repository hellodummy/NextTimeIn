class TasksController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @task = @location.tasks.create!(params[:task])
    
    redirect_to @location
  end

  def destroy
    @task = Task.find(params[:id])
    @location = Location.find(@task.location_id)
    @task.destroy
    
    redirect_to @location
  end
  
end
