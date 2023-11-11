class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_secure_password
  has_one_attached :avatar

  # validations
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  enum :role, { "member": 0, "admin": 1}

end
