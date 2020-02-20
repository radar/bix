require_relative "boot"

require "dry/system/container"
require "dry/auto_inject"

module Bix
  class Application < Dry::System::Container
    configure do |config|
      config.root = File.expand_path('..', __dir__)
      config.default_namespace = 'bix'

      config.auto_register = 'lib'
    end

    load_paths!('lib')
  end

  Import = Dry::AutoInject(Application)
end
