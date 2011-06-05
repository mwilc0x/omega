class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.integer :id, :auto_increment => true
      t.integer :product_id
      t.integer :store_id

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
