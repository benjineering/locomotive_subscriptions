require 'git'
require 'logger'

namespace :dummy do
  def logger
    Logger.new(STDOUT)
  end

  def bundle
    puts `cd #{DUMMY_BAK_PATH} && bundle install`
  end

  desc "Installs the dummy app from the repo into '#{DUMMY_BAK_PATH}' and copies it to '#{DUMMY_PATH}'"
  task install: :clean do
    g = Git.clone(DUMMY_REPO_URL, DUMMY_BAK_DIR, path: DUMMY_ROOT_DIR)
    g.checkout(DUMMY_REPO_BRANCH)
    bundle
    Rake::Task['dummy:restore'].invoke
  end

  desc "Updates '#{DUMMY_BAK_PATH}' from the repo and replaces '#{DUMMY_PATH}' with it"
  task :update do
    Git.open(DUMMY_BAK_PATH, log: logger).pull
    bundle
    Rake::Task['dummy:restore'].invoke
  end

  desc "Copies '#{DUMMY_BAK_PATH}' to '#{DUMMY_PATH}'"
  task :restore do
    rm_rf(DUMMY_PATH)
    cp_r(DUMMY_BAK_PATH, DUMMY_PATH) # TODO - exclude .git
  end
end
