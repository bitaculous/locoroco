server 'foo', user: 'bar', roles: %w{web app db}

set :deploy_to, "/var/www/#{fetch(:domain)}/#{fetch(:application)}"

set :linked_files, %w{config/application.yml config/unicorn/production.rb}

set :branch, :master
set :keep_releases, 5

set :ssh_options, {
  keys: '<key>',
  auth_methods: %w(publickey),
  forward_agent: false
}