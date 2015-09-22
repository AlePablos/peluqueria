class Profile < ActiveRecord::Base
  has_many :users
  belongs_to :discount
end
