class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :level
      t.integer :point
      t.integer :time

      t.timestamps null: false
    end
  end
end
