require 'git'
require 'fileutils'
require 'logger'

namespace :dummy do
  def restore
    FileUtils.rm_rf(DUMMY_PATH)
    FileUtils.cp_r(DUMMY_BAK_PATH, DUMMY_PATH)
  end

  def logger
    Logger.new(STDOUT)
  end

  desc %Q{
    installs the dummy app from the repo into '#{DUMMY_BAK_PATH}' and 
    copies it to '#{DUMMY_PATH}'
  }
  task install: :clean do
    g = Git.clone(DUMMY_REPO_URL, DUMMY_BAK_DIR, path: DUMMY_ROOT_DIR)
    g.checkout(DUMMY_REPO_BRANCH)
    restore
  end

  desc %Q{
    updates '#{DUMMY_BAK_PATH}' from the repo and replaces 
    '#{DUMMY_PATH}' with it
  }
  task :update do
    Git.open(DUMMY_BAK_PATH, log: logger).pull
  end
end
