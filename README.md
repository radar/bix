# ROM + Dry Showcase

The repo goes along with the [ROM + Dry Showcase](https://ryanbigg.com/2020/02/rom-and-dry-showcase-part-1). This is 
very similar to the example in Chapter 1 of [Maintainable Rails](https://leanpub.com/maintain-rails/) however the 
repo mentioned in that chapter is not 
available (`https://github.com/radar/maintaining-rails-examples/tree/v2`)

Assuming you have PostgreSQL installed locally then after cloning you'll need to do the follow:

```shell
cp .env.development.example .env.development
createdb bix_dev
bundle
rake db:migrate
bin/console 
```

Then from the console

```ruby
user_repo = Bix::Application['repos.user_repo']
user_repo.create(first_name: "Ryan", last_name: "Bigg", age: 32)
=> #<ROM::Struct::User id=1 first_name="Ryan" last_name="Bigg" age=32 ...>

user_repo.all
=> [#<ROM::Struct::User id=1 first_name="Ryan" last_name="Bigg" age=32 ...>]
```

