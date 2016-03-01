class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null => false
      t.integer :level, default => 1
      t.integer :point, default => 0

      t.timestamps null: false
    end
    add_index :users, :username, :unique => true
  end
end
