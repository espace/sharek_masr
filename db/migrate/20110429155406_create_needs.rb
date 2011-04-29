class CreateNeeds < ActiveRecord::Migration
 
 def self.up
    create_table :needs do |t|
      t.text :description, :null =>false
      t.integer :city_id
      t.integer :district_id
      t.string :address
      t.integer :urgency_id, :null => false
      t.integer :category_id, :null => false
      t.boolean :verified
      t.boolean :satisfied
      t.timestamps
    end
  end

  def self.down
    drop_table :needs
  end
end
