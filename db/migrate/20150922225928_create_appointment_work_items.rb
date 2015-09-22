class CreateAppointmentWorkItems < ActiveRecord::Migration
  def change
    create_table :appointments_work_items do |t|
      t.integer :work_item_id
      t.integer :appointment_id
    end

    add_index :appointments_work_items, [:work_item_id, :appointment_id], unique: true, name: "appointment_work_items_index"
  end
end
