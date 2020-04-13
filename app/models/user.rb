# frozen_string_literal: true

class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_feeds, through: :favorites, source: :feed
  has_many :feeds
  has_many :comments
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }
  mount_uploader :image, ImageUploader
  before_validation { email.downcase! }
  has_secure_password
end
