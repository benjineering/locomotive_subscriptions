module LocomotiveSubscriptions
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    
    def require_subscriptions
      inject_into_file 'lib/locomotivecms.rb', after: "require 'locomotive/engine'\n" do <<-'RUBY'

        require 'locomotive_subscriptions'

      RUBY
      end
    end

    def copy_specs

    end
  end
end
