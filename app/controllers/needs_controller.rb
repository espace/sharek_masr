class NeedsController < ApplicationController

  def index
    @needs = Need.all
  end

 
  def show
    @need = Need.find(params[:id])
  end
  
  def by_category
  	@needs = Need.where(:category_id => params[:id])
  end
  
  def by_district
  	@needs = Need.where(:district_id => params[:id])
  end

 
  def new
    @need = Need.new
  end

  
  def edit
    @need = Need.find(params[:id])
  end

  
  def create
    @need = Need.new(params[:need])
  end

  
  def update
    @need = Need.find(params[:id])
  end

  
  def destroy
    @need = Need.find(params[:id])
    @need.destroy
  end
  
end
