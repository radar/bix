Bix::Application.boot(:web) do |app|
  init do
    require "hanami-router"
    require "hanami-controller"
  end
end
