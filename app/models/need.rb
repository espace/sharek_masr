class Need < ActiveRecord::Base
#relations	
  belongs_to :city
  belongs_to :district
  belongs_to :urgency
  belongs_to :category
  belongs_to :organisation
  belongs_to :user
  has_many   :votes
  #scopes
  validates :title, :address, :urgency_id, :category_id, :presence=>true
  
  default_scope :order=>"updated_at DESC"
  scope :by_category, lambda { |category_id|
    self.where(:category_id => category_id)
  }
 
  scope :not_satisfied, where(:verified => true, :satisfied =>false)
  scope :satisfied, where(:satisfied => true).order("created_at DESC")
  scope :by_district, lambda { |district_id|
	 self.where(:district_id => district_id)
 }
 
  scope :by_urgency, lambda { |urgency_id|
	self.where(:urgency_id => urgency_id)
 }

end
