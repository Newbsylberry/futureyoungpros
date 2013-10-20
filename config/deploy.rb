set :application, "futureyoungpros"
set :repository,  "git@github.com:Newbsylberry/#{application}.git"
 
set :scm, :git
set :ssh_options, { :forward_agent => true }
set :branch, "master"
set :deploy_via, :remote_cache
 
set :use_sudo, false
set :rails_env, 'production'
set :keep_releases, 5
 
set :user, "cmccarthy"
set :port, 25
set :deploy_to, "/home/#{user}/#{application}"
 
server "162.243.53.216", :web, :app, :db, :primary => true

 
load 'deploy/assets'
 
require "rvm/capistrano"
require 'bundler/capistrano'
 

set :rvm_autolibs_flag, :fail      # more info: rvm help autolibs
 
after 'deploy:start', 'unicorn:start'
after 'deploy:restart', 'unicorn:restart'
after "deploy:restart", "deploy:cleanup"
before "deploy:finalize_update", "deploy:set_symlinks"
 
namespace :deploy do
  task :set_symlinks do
    run "mkdir -p #{release_path}/tmp"
    run "ln -s #{shared_path}/sockets #{release_path}/tmp/sockets"
    run "ln -s #{shared_path}/application.yml #{release_path}/config/application.yml"
  end
  
  task :create do
    run "cd #{release_path} && bundle exec rake RAILS_ENV=production  db:create"
  end
end
