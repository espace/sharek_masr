class AllowPublicReports < ActiveRecord::Migration
  def self.up
    Need.update_all(:verified=>true)
    change_column :needs, :verified, :boolean, :default=>true, :null=>false
  end

  def self.down
  end
end
