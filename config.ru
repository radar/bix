require_relative "config/application"

Bix::Application.finalize!

run Bix::Web.app
