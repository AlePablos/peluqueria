class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :description
      t.string :porcent

      t.timestamps null: false
    end
  end
end
