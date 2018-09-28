begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# TODO: put dummy constants in some kind of Rake config file 
DUMMY_REPO_URL = 'https://github.com/benjineering/loco-app-extended.git'
DUMMY_REPO_BRANCH = 'master'

DUMMY_ROOT_DIR = File.join(__dir__, 'spec')
DUMMY_DIR = 'dummy'
DUMMY_BAK_DIR = 'dummy-bak'
DUMMY_PATH = File.join(DUMMY_ROOT_DIR, DUMMY_DIR)
DUMMY_BAK_PATH = File.join(DUMMY_ROOT_DIR, DUMMY_BAK_DIR)

load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

begin
  require 'rake/clean'
  CLEAN.include(DUMMY_PATH, DUMMY_BAK_PATH)
rescue LoadError
end

# I don't think we need this - these are tasks to be run from the rails app
#load 'lib/tasks/locomotive_subscription_tasks.rake'

Dir['lib/locomotive_subscriptions/tasks/**/*.rake'].each { |t| load t }

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
