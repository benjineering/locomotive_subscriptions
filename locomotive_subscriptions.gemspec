$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'locomotive_subscriptions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'locomotive_subscriptions'
  s.version     = LocomotiveSubscriptions::VERSION
  s.authors     = ['Ben Williams']
  s.email       = ['8enwilliams@gmail.com']
  s.summary     = 'Locomotive Subscriptions.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '4.2.10'
  s.add_dependency 'locomotivecms', '~> 3.3.0'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'git'
  s.add_development_dependency 'pry'

  # don't know why this is needed, but it is
  s.add_development_dependency 'sass-rails', '~> 5.0'
end
