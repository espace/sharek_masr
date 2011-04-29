class AddDefaultValuesToNeeds < ActiveRecord::Migration
  def self.up
    change_column :needs, :verified, :boolean, :null=>false, :default=>false
    change_column :needs, :satisfied, :boolean, :null=>false, :default=>false
  end

  def self.down
  end
end
