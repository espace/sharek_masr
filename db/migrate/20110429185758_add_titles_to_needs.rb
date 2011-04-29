class AddTitlesToNeeds < ActiveRecord::Migration
  def self.up
  	add_column :needs, :title, :string, :null => false
  end

  def self.down
  	remove_column :needs, :title
  	
  end
end
