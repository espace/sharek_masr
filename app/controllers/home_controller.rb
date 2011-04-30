class HomeController < ApplicationController
 before_filter :authenticate_user!

  def index
    @categories = Category.all
    @urgencies = Urgency.all
    @disticts = District.all

  end

end
