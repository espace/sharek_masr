class AddRolesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :web_master, :boolean, :default=>false
    add_column :users, :org_admin, :boolean, :default=>false
    add_column :users, :org_member, :boolean, :default=>false

  end

  def self.down
    remove_column :users, :web_master
  end
end
