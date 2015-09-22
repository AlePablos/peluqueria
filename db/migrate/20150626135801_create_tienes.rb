class CreateTienes < ActiveRecord::Migration
  def change
    create_table :tienes do |t|
      t.belongs_to :reservas
      t.belongs_to :cortes

      t.timestamps null: false
    end
  end
end
