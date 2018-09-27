ENV['RAILS_ENV'] ||= 'test'
ENGINE_ROOT = File.join(File.dirname(__FILE__), '../')

#require File.expand_path('../../config/environment', __FILE__)
require File.expand_path('../dummy/config/environment',  __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'spec_helper'
require 'rspec/rails'

Dir[File.join(ENGINE_ROOT, 'spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  #config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  #config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
