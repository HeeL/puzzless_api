require_relative '../boot'

current_dir = File.expand_path(File.dirname(__FILE__))
ActiveRecord::Migrator.migrate("#{current_dir}/migrations")
