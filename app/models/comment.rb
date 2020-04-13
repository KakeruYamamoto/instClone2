# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :feed
  belongs_to :user
  validates :content, presence: true, length: { maximum: 150 }
end
