class PropImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :property
  attr_accessor :image
end
