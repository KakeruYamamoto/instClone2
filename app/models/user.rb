class User < ApplicationRecord
  # has_many :favorites, dependent: :destroy
  has_many :feeds
  validates :name, presence: true, length: { maximum: 30 }
  validates :email,presence: true, length: { maximum: 255 }, uniqueness: true,
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  before_validation { email.downcase! }
  has_secure_password

end
