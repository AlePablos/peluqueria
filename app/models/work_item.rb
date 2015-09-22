class WorkItem < ActiveRecord::Base
  has_and_belongs_to_many :appointments
end
