class CreateNeeds < ActiveRecord::Migration
 
 def self.up
    create_table :needs do |t|
      t.text :description
      t.integer :city_id
      t.integer :district_id
      t.string :address
      t.integer :urgency_id
      t.integer :category_id
      t.boolean :verified
      t.boolean :satisfied
      t.timestamps
    end
  end

  def self.down
    drop_table :needs
  end
end
