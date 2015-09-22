class CreateCortes < ActiveRecord::Migration
  def change
    create_table :cortes do |t|
      t.string :tipo_corte
      t.integer :duracion
      t.integer :precio

      t.timestamps null: false
    end
  end
end
