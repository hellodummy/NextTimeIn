class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :show


  def show
    if (params[:permalink])
      @page = Page.find_by_permalink(params[:permalink])
    else  
      @page = Page.find(params[:id])
    end

  end

  def edit
   # @page = Page.find(params[:id])
    redirect_to page_path
  end

end
