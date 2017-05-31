class Property < ApplicationRecord
  has_many :p_saveds

  validates :address, :city, :state, :zipcode, :year_built, :status, :building_type, presence: true

end
