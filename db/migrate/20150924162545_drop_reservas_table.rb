class DropReservasTable < ActiveRecord::Migration
  def change
    drop_table :reservas
  end
end
