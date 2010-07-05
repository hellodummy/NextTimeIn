class TasksController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @task = @location.tasks.create!(params[:task])
    
    @task.completed = false
    @task.save
    
    redirect_to @location
  end

  def destroy
    @task = Task.find(params[:id])
    @location = Location.find(@task.location_id)
    @task.destroy
    
    redirect_to @location
  end
  
  def show
    @task = Task.find(params[:id])
    @location = Location.find(@task.location_id)
    
    redirect_to @location
  end
  
  def complete
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    
    @location = Location.find(@task.location_id)
    
    redirect_to @location
  end
  
  def uncomplete
    @task = Task.find(params[:id])
    @task.completed = false
    @task.save
    
    @location = Location.find(@task.location_id)
    
    redirect_to @location
  end
    
  def completed?
    self.completed
  end

  
end
