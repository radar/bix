Bix::Application.boot(:core) do
  init do
    require "dry-validation"
    require "dry/monads"
    require "dry/monads/do"
  end

  start do
    Dry::Validation.load_extensions(:monads)
  end
end
