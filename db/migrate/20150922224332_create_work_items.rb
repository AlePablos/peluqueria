class CreateWorkItems < ActiveRecord::Migration
  def change
    create_table :work_items do |t|
      t.string :name
      t.float :price
      t.integer :duration

      t.timestamps null: false
    end
  end
end
