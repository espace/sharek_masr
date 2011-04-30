class NeedsController < ApplicationController

  def index
    @needs = Need.not_satisfied
    [:category_id, :district_id, :urgency_id].each do |filter|
    	@needs = @needs.where(filter=>params[filter]) unless params[filter].blank?
    end
    @categories = Category.all
    @urgencies = Urgency.all
    @disticts = District.all
    
  end

 
  def show
    @need = Need.find(params[:id])
  end
  
  def satisfied
  	@needs = Need.satisfied
  end

 
  def new
    @need = Need.new
  end

  
  def edit
    @need = Need.find(params[:id])
  end

  
  def create
    @need = Need.new(params[:need])
    if @need.save
      redirect_to(@need, :notice => 'Need was successfully created.') 
    else
      render :action => "new"
    end
  end

  
  def update
    @need = Need.find(params[:id])
  end

  
  def destroy
    @need = Need.find(params[:id])
    @need.destroy
  end
  
end
