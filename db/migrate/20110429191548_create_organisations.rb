class CreateOrganisations < ActiveRecord::Migration
  def self.up
    create_table :organisations do |t|
      t.string :name, :null =>false

      t.timestamps
    end
  end

  def self.down
    drop_table :organisations
  end
end
