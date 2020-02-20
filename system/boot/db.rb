Bix::Application.boot(:db) do
  init do
    require "rom"
    require "rom-sql"

    register('db.config', ROM::Configuration.new(:sql, ENV['DATABASE_URL']))
  end
end
