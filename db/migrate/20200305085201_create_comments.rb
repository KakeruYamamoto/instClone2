# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :feed, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
