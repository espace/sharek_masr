class City < ActiveRecord::Base
  has_many :needs
  validates :name, :presence=>true

end
