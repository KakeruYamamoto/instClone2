# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ユーザ生成
10.times do |_n|
  name = Faker::Name.name
  email = Faker::Internet.email
  User.create!(name: name,
               email: email,
               image: open("#{Rails.root}/db/fixtures_icon/images#{rand(1..12)}.png"),
               password: email,
               password_confirmation: email)
end

# イベントを持たせるユーザ生成
email1 = Faker::Internet.email
email2 = Faker::Internet.email
email3 = Faker::Internet.email
name1 = Faker::Name.name
name2 = Faker::Name.name
name3 = Faker::Name.name

test_user1 = User.create(name: name1,
                         email: email1,
                         image: open("#{Rails.root}/db/fixtures_icon/images#{rand(1..12)}.png"),
                         password: email1,
                         password_confirmation: email1)

test_user2 = User.create(name: name2,
                         email: email2,
                         image: open("#{Rails.root}/db/fixtures_icon/images#{rand(1..12)}.png"),
                         password: email2,
                         password_confirmation: email2)

test_user3 = User.create(name: name3,
                        email: email3,
                        image: open("#{Rails.root}/db/fixtures_icon/images#{rand(1..12)}.png"),
                        password: email3,
                        password_confirmation: email3)
                        1
# ユーザPOST１
3.times do |n|
  content = Faker::ChuckNorris.fact
  feed1 = test_user1.feeds.build(
          image: open("#{Rails.root}/db/fixtures/img#{rand(1..12)}.jpg"),
          content: content
          )
  feed1.save
end

# ユーザPOST２
3.times do |n|
  content = Faker::ChuckNorris.fact
  feed2 = test_user2.feeds.build(
          image: open("#{Rails.root}/db/fixtures/img#{rand(1..12)}.jpg"),
          content: content
          )
  feed2.save
end

# ユーザPOST３
3.times do |n|
  content = Faker::ChuckNorris.fact
  feed3 = test_user3.feeds.build(
          image: open("#{Rails.root}/db/fixtures/img#{rand(1..12)}.jpg"),
          content: content
          )
  feed3.save
end
