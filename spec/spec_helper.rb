# We need to set the environment to test
ENV['RACK_ENV'] = 'test'
require 'factory_bot'
require 'rack/test'
require_relative './support/matchers'

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'spec'
  end
  SimpleCov.minimum_coverage 100
  SimpleCov.refuse_coverage_drop
end

# Defining the app to test is required for rack-test
OUTER_APP = Rack::Builder.parse_file('config.ru').first

# Base URL constant for our future tests
BASE_URL = 'http://example.org:80/api'.freeze

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
