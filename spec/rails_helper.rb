require 'spec_helper'
require 'pry'

ENV['RAILS_ENV'] ||= 'test'
ENGINE_ROOT = File.join(File.dirname(__FILE__), '../')

# not sure why this is needed, but it is
require 'sass-rails'

require File.expand_path('../dummy/config/environment',  __FILE__)

if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'rspec/rails'
Dir[File.join(ENGINE_ROOT, 'spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  #config.use_transactional_fixtures = true
  #config.filter_rails_from_backtrace!
  config.infer_spec_type_from_file_location!
end
