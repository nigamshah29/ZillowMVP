class Property < ApplicationRecord
  acts_as_mappable
  has_many :favorites

  has_many :prop_images


  validates :address, :zipcode, :year_built, :status, :building_type, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  # acts_as_mappable :lat_column_name => :latitude, :lng_column_name => :longitude

end
