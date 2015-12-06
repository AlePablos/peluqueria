class WorkItem < ActiveRecord::Base
  has_and_belongs_to_many :appointments

  validates :duration, numericality: { greater_than: 0, smaller_than: 12.hours.to_i }
  validates :price,    numericality: { greater_than: 0 }
end
