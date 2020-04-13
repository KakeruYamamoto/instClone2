# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :feed
  validates :content, presence: true, length: { maximum: 150 }

end
