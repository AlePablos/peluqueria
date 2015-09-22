class AddConfirmationSecretToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmation_secret, :string
  end
end
