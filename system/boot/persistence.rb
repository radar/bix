Bix::Application.boot(:persistence) do |app|
  start do
    config = app['db.config']
    config.auto_registration(app.root + "lib/bix")

    container = ROM.container(:sql, app['db.connection']) do |config|
      config.auto_registration(app.root + "lib/bix")
    end
    register('container', container)
  end
end
