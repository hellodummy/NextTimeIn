class TasksController < ApplicationController
  before_filter :load_location, :only => [ :show, :edit, :update, :destroy ]
  
  def index
    @tasks = Task.all
  end

  def create
    @location = Location.find(params[:location_id])
    @task = @location.tasks.create!(params[:task])
    
    @task.completed = false
    @task.save
    
    redirect_to @location
  end

  def update 
    @task = Task.find(params[:id])
    @location = Location.find(@task.location_id)
    
    if @task.update_attributes(params[:task])
      redirect_to(@location, :notice => "Task '#{@task.name}' was successfully updated.")
    else
      render :action => "edit" 
    end    
  end

  def destroy
    @task = Task.find(params[:id])
    @location = Location.find(@task.location_id)
    @task.destroy
    
    redirect_to @location
  end
  
  def show
    @task = Task.find(params[:id])    
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
end
