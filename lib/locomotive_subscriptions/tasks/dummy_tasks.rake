require 'git'

namespace :dummy do
  desc %Q{
    installs the dummy app from the repo into '#{DUMMY_BAK_PATH}' and 
    copies it to '#{DUMMY_PATH}'
  }
  task install: :clean do
    Git.clone(DUMMY_REPO_URL, 'dummy', path: DUMMY_BAK_PATH)
  end

  desc %Q{replaces '#{DUMMY_PATH}' with a copy of '#{DUMMY_BAK_PATH}'}
  task :restore do

  end

  desc %Q{
    updates '#{DUMMY_BAK_PATH}' from the repo and replaces 
    '#{DUMMY_PATH}' with it
  }
  task :update do

  end

  desc %Q{deletes '#{DUMMY_PATH}'}
  task :remove do

  end
end
