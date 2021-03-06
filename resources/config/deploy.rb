# Lock configuration for Capistrano `3.3.5`
lock '3.3.5'

set :domain, '<DOMAIN>'
set :application, '<APPLICATION>'

set :linked_dirs, %w[log public/assets public/sites public/system tmp/cache tmp/pids tmp/sockets]

set :scm, :git
set :repo_url, 'https://github.com/bitaculous/locoroco.git'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :keep_releases, 5

# set :rvm_ruby_version, 'ruby-2.1.5@locomotivecms-locoroco'
# set :rvm_roles, [:app, :web]
# set :rvm_type, :system
# set :rvm_custom_path, '/usr/local/rvm'

set :bundle_flags, '--deployment --quiet'
set :bundle_without, 'development test deployment misc'
set :bundle_jobs, 4

set :pty, true

# Set formatter (`:black_hole`, `:dot`, `:pretty` or `:simple_text`)
set :format, :pretty

# Set log level (`:debug`, `:error` or `:info`)
set :log_level, :info

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end