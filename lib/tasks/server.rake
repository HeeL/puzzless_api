namespace :server do
  desc "Start unicorn on production"
  task :start do
    run_command :start
  end

  desc "Restart unicorn on production"
  task :restart do
    run_command :restart
  end

  desc "Stop unicorn on production"
  task :stop do
    run_command :stop
  end

  def run_command(cmd)
    puts `/etc/init.d/unicorn_puzzless_api #{cmd}`
  end
end