class TasksController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @task = @location.tasks.create!(params[:task])
    
    @task.completed = false
    @task.save
    
    redirect_to @location
  end

  def update 
    @task = Task.find(params[:id])
    if @task.completed 
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    
    @location = Location.find(@task.location_id)
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
    
  def completed?
    self.completed
  end

  
end
