class Appointment < ActiveRecord::Base
  has_and_belongs_to_many :work_items
  belongs_to :user

  before_save :set_end_time
  before_save :ensure_not_overlapping

  validates :work_items, presence: {message: "Elija uno o más servicios."}

  def self.todays_appointments
    where(start_time: DateTime.now.to_date..(DateTime.now.to_date + 23.hours + 59.minutes + 59.seconds))
  end

  private

  def set_end_time
    self.end_time = start_time + work_items.reduce(0) { |minutes, work_item| minutes + work_item.duration.minutes }
  end

  def ensure_not_overlapping
    if Appointment.where(end_time: start_time..end_time).any?
      errors[:base] << 'Hay un turno en ese espacio. Elija otro horario.'
      false
    else
      true
    end
  end
end
