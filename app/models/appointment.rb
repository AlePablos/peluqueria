class Appointment < ActiveRecord::Base
  has_and_belongs_to_many :work_items
  belongs_to :user

  def end_time
    start_time + work_items.reduce(0) { |minutes, work_item| minutes + work_item.duration.minutes }
  end
end
