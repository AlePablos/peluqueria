class Appointment < ActiveRecord::Base
  has_and_belongs_to_many :work_items
  belongs_to :user
end
