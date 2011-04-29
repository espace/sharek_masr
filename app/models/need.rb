class Need < ActiveRecord::Base
#relations	
  belongs_to :city
  belongs_to :district
  belongs_to :urgency
  belongs_to :category
  
  #validations
  
 
end
