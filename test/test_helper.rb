ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

#User minitest
require 'minitest/reporters'

Minitest::Reporters.use!(Minitest::Reporters::ProgressReporter.new(color: true),ENV,Minitest.backtrace_filter)
#ActiveRecord::Migration.maintain_test_schema!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #fixtures :all

  # Add more helper methods to be used by all tests here...
end
