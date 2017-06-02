class Property < ApplicationRecord
  has_many :p_saveds
  has_many :favorites

  has_many :prop_images

  mount_uploader :image, ImageUploader


  validates :address, :city, :state, :zipcode, :year_built, :status, :building_type, presence: true

end
