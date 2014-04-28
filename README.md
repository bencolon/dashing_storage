# DashingStorage

Add storage feature to the Dashing dashboard (mongodb support)

## Installation

Add this line to your application's Gemfile:

    gem 'dashing_storage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dashing_storage

## Usage

Add a database.yml file at the root of your Dashing dashboard source code with this structure:

```
development:
  user:
  password:
  host1: localhost
  port1: 27017
  database: my_dashing_db

production:
  user: heroku
  password: 1234567890
  host1: linus.mongohq.com
  port1: 10041
  database: app1234567890
```

Whatever file you want to use this gem in, add:

    require 'dashing_storage'

And then just call:
    
```   
DashingStorage.db['my_collection'].find...

DashingStorage.db['my_collection'].insert...
```
More info at: http://docs.mongodb.org/manual/reference/crud/#query-and-data-manipulation-collection-methods

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
