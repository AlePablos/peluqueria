class AddLastLoggedTimeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_logged, :datetime
  end
end
