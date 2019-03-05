# frozen_string_literal: true

# Skip coverage check when swagger.json is generated
unless ENV['SKIP_COVERAGE']
  require 'simplecov'

  SimpleCov.start do
    add_filter '/spec/'
    add_filter '/config/'
    add_filter '/vendor/'
    add_filter '/components/'

    add_group 'Controllers', 'app/controllers'
    add_group 'Models', 'app/models'
    add_group 'Helpers', 'app/helpers'
    add_group 'Mailers', 'app/mailers'
  end

  # This outputs the report to your public folder
  SimpleCov.coverage_dir 'public/coverage'
  SimpleCov.minimum_coverage 100
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
