# CodaDocs

The Coda Docs Ruby library provides convenient access to the [Coda Docs API](https://coda.io/developers/apis/v1beta1) from applications written in the Ruby language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coda_docs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coda_docs

## Usage

The library needs to be configured with your account's secret key which is available in your [Coda Docs Dashboard](https://coda.io/account). You can set the required key with the `CODA_DOCS_API_KEY` environment variable

```ruby
CODA_DOCS_API_KEY=Vau7FXe57Ith6MxcMnT1QSzNZ0o1YZ8s

# New Coda Docs Client
client = CodaDocs::Client.new
```
 or at the moment we create a new client.

```ruby
require "coda_docs"

# New Coda Docs Client
client = CodaDocs::Client.new('Vau7FXe57Ith6MxcMnT1QSzNZ0o1YZ8s')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cmunozgar/coda_docs.
