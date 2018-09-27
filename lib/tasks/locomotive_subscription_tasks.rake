namespace :spec do

  desc 'Runs subscriptions tests'
  task :subscriptions do
    puts "\np00ts mcg00ts mcw00ts\n\n"
    Rake::Task['spec'].invoke
  end
end
