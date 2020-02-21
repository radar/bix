module Bix
  module Web
    Router = Hanami::Router.new do
      post "/users", to: Controllers::Users::Create
    end
  end
end
