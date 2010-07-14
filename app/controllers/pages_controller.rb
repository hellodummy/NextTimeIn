class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :show


  def show
    if (params[:permalink])
      @page = Page.find_by_permalink(params[:permalink])
    else  # TODO: elsif here for other things
      @page = Page.find(params[:id])
    end 

  end

  # def update 
  #  
  #    @page = Page.find(params[:id])
  #    respond_to do |format|
  #      if @page.update_attributes(params[:page])
  #        format.html { redirect_to(@page, :notice => 'Page successfully updated.') }
  #       else
  #        format.html { render :action => "edit" }
  #      end
  #    end
  #    
  #  end
 
  def edit
   # @page = Page.find(params[:id])
    redirect_to page_path
  end

end
