ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'active_support'
require 'rails/test_help'
# require 'factory_girl_rails'  #use if you are using FactoryGirl for fixtures

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


# After searching and hacking, here is what got it to work for me.
#
# Remove rspec and rspec-rails from the Gemfile
# Run "gem list rspec --local", and do a "gem uninstall" for each of those rspec gems.
# Delete Gemfile.lock
# rm -r spec/
# bundle install
# mkdir test/
# Add "require 'rails/all'" to config/application.rb
# Create a file test/test_helper.rb and put the following code in it:
# ENV["RAILS_ENV"] = "test"
# require File.expand_path('../../config/environment', __FILE__)
# require 'active_support'
# require 'rails/test_help'
# # require 'factory_girl_rails'  #use if you are using FactoryGirl for fixtures
#
# class ActiveSupport::TestCase
#   # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
#   #
#   # Note: You'll currently still have to declare fixtures explicitly in integration tests
#   # -- they do not yet inherit this setting
#   fixtures :all
#
#   # Add more helper methods to be used by all tests here...
# end
# After that, you can generate tests using
#
# rails g integration_test SomeStories
# Or you can just add unit tests under test/unit and then run them with
#
# rake test
# rake test:recent
