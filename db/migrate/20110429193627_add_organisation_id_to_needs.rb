class AddOrganisationIdToNeeds < ActiveRecord::Migration
  def self.up
  	add_column :needs, :organisation_id, :integer
  end

  def self.down
  	remove_column :needs, :organisation_id
  end
end
