class DropDiscountsTable < ActiveRecord::Migration
  def change
    drop_table :discounts
  end
end
