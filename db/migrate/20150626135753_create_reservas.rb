class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.datetime :dia  #incluye hora
      t.belongs_to :users

      t.timestamps null: false
    end
  end
end
