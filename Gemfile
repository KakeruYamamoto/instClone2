source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Core
gem 'rails', '~> 5.2.3'

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

# View/Front
gem 'bcrypt', '3.1.11'
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Navigation
gem 'turbolinks', '~> 5'

# Backend
gem 'bootsnap', '>= 1.1.0', require: false
gem 'carrierwave'
gem 'faker'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'rails-erd'
end

group :development do
  gem 'letter_opener_web'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
