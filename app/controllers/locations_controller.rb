class LocationsController < ApplicationController
  before_filter :load_location, :only => [ :show, :edit, :update, :destroy ]
  before_filter :authenticate_user!
  
  def index
    @locations = Location.find(:all, :conditions => { :user_id => current_user } )

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
  end

  def create
    @location = Location.new(params[:location])
    @location.user_id = current_user.id

    respond_to do |format|
      if @location.save
        format.html { redirect_to(@location, :notice => 'Location was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
       else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    name = @location.name
    @location.destroy
    
    flash[:notice] = "#{name} was successfully deleted"

    respond_to do |format|
      format.html { redirect_to(locations_url) }
    end
  end
  
  private
  
  def load_location
    @location = Location.find(params[:id], :conditions => { :user_id => current_user } )
  end
end
