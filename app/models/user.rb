class User < ApplicationRecord
  has_secure_password

  has_many :p_saveds
  has_many :favorites

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end

end
