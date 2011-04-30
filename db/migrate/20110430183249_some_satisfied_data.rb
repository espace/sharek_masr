class SomeSatisfiedData < ActiveRecord::Migration
  def self.up
    3.times.each do |t|
      n = Need.last
      n.satisfied = true
      n.save
      
    end
  end

  def self.down
  end
end
