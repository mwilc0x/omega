class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.integer :id, :auto_increment => true
      t.text :location

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
