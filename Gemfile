# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.2'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.12'

# NOTE: must be loaded before event_stream
# gem 'devise'
# gem 'devise_token_auth'

group :development, :test do
  gem 'guard-rspec', require: false
  gem 'pry-nav'
  gem 'pry-rails'
  gem 'rspec', '~> 3.8.0'
  gem 'rspec-rails', '~> 3.8.0'
  gem 'rswag', '~> 2.0.5'
  gem 'rubocop', '~> 0.64.0'
  gem 'rubocop-rspec'
end

group :development do
  gem 'brakeman', '~> 4.4.0'
  gem 'bundler-audit', '~> 0.6.0'
  gem 'dotenv'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1.2'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
