class AddFieldsToOrganisations < ActiveRecord::Migration
  def self.up
  	add_column :organisations, :email, :string
  	add_column :organisations, :description, :text
  	add_column :organisations, :address, :string
  	add_column :organisations, :phone, :string
  end

  def self.down
  end
end
