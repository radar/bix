# ROM + Dry Showcase

The repo goes along with the [ROM + Dry Showcase](https://ryanbigg.com/2020/02/rom-and-dry-showcase-part-1)

Assumeing you have PostgreSQL installed locally then after cloning you'll need to do the follow:

```shell
createdb bix_dev
cp .env.development.example .env.development

bundle
rake db:migrate
bin/console 
```

Then from the console

```ruby
user_repo = Bix::Repos::UserRepo.new(Bix::Application['container'])
user_repo.create(first_name: "Ryan", last_name: "Bigg", age: 32)
=> #<ROM::Struct::User id=1 first_name="Ryan" last_name="Bigg" age=32 ...>

user_repo.all
=> [#<ROM::Struct::User id=1 first_name="Ryan" last_name="Bigg" age=32 ...>]
```

