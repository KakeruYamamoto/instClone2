class Feed < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy #追加コメント
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :image, presence: true
  validates :content,  presence: true
end
