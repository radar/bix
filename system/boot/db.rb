Bix::Application.boot(:db) do
  init do
    require "rom"
    require "rom-sql"

    register('db.connection', Sequel.connect(ENV['DATABASE_URL'], extensions: %i[pg_timestamptz]))
  end
end
