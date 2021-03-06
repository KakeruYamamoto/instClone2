# frozen_string_literal: true

class AddUserRefToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :feeds, :user, foreign_key: true
  end
end
