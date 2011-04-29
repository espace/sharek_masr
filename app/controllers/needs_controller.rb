class NeedsController < ApplicationController

  def index
  	puts params.inspect
  	puts "************************************8"
    @needs = Need.all
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
  end

  
  def update
    @need = Need.find(params[:id])
  end

  
  def destroy
    @need = Need.find(params[:id])
    @need.destroy
  end
  
end
