class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.integer :sex, default: 0
      t.string :email
      t.string :password_digest
      t.belongs_to :profile

      t.timestamps null: false
    end
  end
end
