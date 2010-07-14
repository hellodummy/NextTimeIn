class TasksController < ApplicationController
  before_filter :load_task, :only => [ :show, :edit, :update, :destroy ]
  before_filter :load_task_location, :only => [ :update, :destroy ]
  
  def index
    @tasks = Task.all
  end

  def create
    @location = Location.find(params[:location_id], :scope => current_user)
    @task = @location.tasks.create!(params[:task])
    
    @task.save
    
    redirect_to @location
  end

  def update 
    if @task.update_attributes(params[:task])
      redirect_to(@location, :notice => "Task '#{@task.name}' was successfully updated.")
    else
      render :action => "edit" 
    end    
  end

  def destroy
    @task.destroy
    
    redirect_to @location
  end
  
  def show
  end
  
  def edit
  end
  
  def new
    @task = Task.new
  end
  
  private
  
  def load_task
    @task = Task.find(params[:id])
  end
  
  def load_task_location
    @location = Location.find(@task.location_id, :scope => current_user )
  end
end