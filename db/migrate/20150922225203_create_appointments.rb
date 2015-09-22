class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
