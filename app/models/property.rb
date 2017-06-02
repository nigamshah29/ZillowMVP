class Property < ApplicationRecord
  has_many :p_saveds
  has_many :favorites

  validates :address, :city, :state, :zipcode, :year_built, :status, :building_type, presence: true

end
