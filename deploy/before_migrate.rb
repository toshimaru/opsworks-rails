Chef::Log.info("Running deploy/before_migrate.rb")
env = node[:deploy][:アプリケーション名][:rails_env]
current_release = release_path

execute "rake assets:precompile" do
  cwd current_release
  command "bundle exec rake assets:precompile"
  environment "RAILS_ENV" => env
end
