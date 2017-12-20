# Description

Simple API wrapper for Identitas API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-identitas-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-identitas-api

## Usage

Generate initializer :

    $ rails g ruby_identitas_api:install

Customize base URI if needed

Access API

```ruby
request = Ruby::Identitas::Main.new("YOUR_ACCESS_TOKEN")
response = request.me
```

## Endpoints

### me

Get detail information about user

parameters :

| name         | type         |
| ------------ | ------------ |
|`access_token`| query string |

example :

```ruby
response = request.me.parsed_response
```

### token status

Check token status

parameters :

| name         | type         |
| ------------ | ------------ |
|`access_token`| query string |

example :

```ruby
response = request.token_status.parsed_response
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, use [gem release](https://github.com/svenfuchs/gem-release)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/extrainteger/ruby-identitas-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ruby::Identitas::Api project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/extrainteger/ruby-identitas-api/blob/master/CODE_OF_CONDUCT.md).
