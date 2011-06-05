class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :id, :auto_increment => true
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
