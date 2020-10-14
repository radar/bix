require_relative 'config/application'
require 'rom-sql'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    Bix::Application.start(:db)
    ROM::SQL::RakeSupport.env = ROM.container(:sql, Bix::Application['db.connection'], extensions: %i[pg_timestamptz]) do |config|
      config.gateways[:default].use_logger(Logger.new($stdout))
    end
  end
end
