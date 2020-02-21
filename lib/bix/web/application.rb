require "hanami/middleware/body_parser"

module Bix
  module Web
    def self.app
      Rack::Builder.new do
        use Hanami::Middleware::BodyParser, :json
        run Bix::Web::Router
      end
    end
  end
end
