module LocomotiveSubscriptions
  class Engine < ::Rails::Engine
    isolate_namespace LocomotiveSubscriptions

    config.generators do |g|
      g.test_framework :rspec
      g.orm :mongoid
    end
  end
end
