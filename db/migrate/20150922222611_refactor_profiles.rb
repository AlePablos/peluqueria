class RefactorProfiles < ActiveRecord::Migration
  def change
    drop_table :profiles
    remove_column :users, :profile_id
    add_column :users, :profile, :integer, default: 0
  end
end
