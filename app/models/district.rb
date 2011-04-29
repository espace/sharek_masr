class District < ActiveRecord::Base
  validates :name, :presence=>true
  validates :city_id, :presence=>true
  belongs_to :city
end
