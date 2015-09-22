class Appointment < ActiveRecord::Base
  has_and_belongs_to_many :work_items

  accepts_nested_attributes_for :work_items
end
