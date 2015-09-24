class DropCortesTable < ActiveRecord::Migration
  def change
    drop_table :cortes
  end
end
