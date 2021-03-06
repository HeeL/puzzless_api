namespace :db do
  desc "Run db migrations"
  task :migrate do
    ActiveRecord::Migrator.migrate(File.join(ROOT_PATH, 'db', 'migrations'))
  end
end