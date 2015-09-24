class DropTienesTable < ActiveRecord::Migration
  def change
    drop_table :tienes
  end
end
