require "rubygems"
require "bundler/setup"
require "rspec"
require "credit_bureau"

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end