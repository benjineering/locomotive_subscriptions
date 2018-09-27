$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'locomotive_subscriptions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'locomotive_subscriptions'
  s.version     = LocomotiveSubscriptions::VERSION
  s.authors     = ['Ben Williams']
  s.email       = ['8enwilliams@gmail.com']
  #s.homepage    = 'TODO'
  s.summary     = 'Locomotive Subscriptions.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '= 4.2.6'
  s.add_dependency 'locomotivecms', '~> 3.2'
  s.add_dependency 'mongoid', '~> 5.1.3'

  s.add_development_dependency 'rspec-rails'
end
