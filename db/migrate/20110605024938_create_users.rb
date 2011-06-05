class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id, :auto_increment => true
      t.text :first_name
      t.text :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
