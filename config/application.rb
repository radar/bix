require_relative "boot"

require "dry/system/container"
require "dry/auto_inject"

module Bix
  class Application < Dry::System::Container
    configure do |config|
      config.root = File.expand_path('..', __dir__)

      config.component_dirs.add "lib" do |dir|
        dir.auto_register = true    # defaults to true
        dir.add_to_load_path = true # defaults to true
        dir.default_namespace = "bix"
      end
    end

    # load_paths!('lib')
  end

  Import = Dry::AutoInject(Application)
end
