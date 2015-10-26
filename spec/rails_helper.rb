ENV['RAILS_ENV'] ||= 'test'
ENV['DRIVER'] ||= 'poltergeist'

require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'pry'
require 'factory_girl'
require 'database_cleaner'
require 'simplecov'
require 'webmock/rspec'

SimpleCov.start

ActiveRecord::Migration.maintain_test_schema!

require Rails.root.join('spec/support/pages/_base_page.rb')
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

Capybara.javascript_driver = :selenium

Capybara.default_wait_time = 15
Capybara.ignore_hidden_elements = true

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!

  config.include FactoryGirl::Syntax::Methods

  config.include Pages::PageFactory

  config.before do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end
end
