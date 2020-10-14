require_relative 'config/application'
require 'rom-sql'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    Bix::Application.start(:db)
    config = Bix::Application['db.config']
    config.gateways[:default].use_logger(Logger.new($stdout))
  end
end
