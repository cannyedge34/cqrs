ruby '3.0.1'

source 'https://rubygems.org'

gem 'dry-struct'
gem 'grape'
gem 'rack-test'
gem 'rom-sql'
gem 'ruby_event_store-rom', require: 'ruby_event_store/rom/sql'
gem 'sqlite3'
gem 'zeitwerk'

group :development, :test do
  gem 'byebug'
  gem 'faker'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'simplecov', require: false
end

group :test do
  gem 'factory_bot'
  gem 'rspec'
end
