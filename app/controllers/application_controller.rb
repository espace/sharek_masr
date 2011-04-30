class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :preparation

  def preparation
    @categories = Category.all
    @urgencies = Urgency.all
    @districts = District.all

  end 
end
