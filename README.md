# PaczkomatReader

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/paczkomat_reader`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paczkomat_reader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paczkomat_reader

## Setup

This config should be put in config/initializers/paczkomat_reader.rb file.

If you want to use Paczkomatreader with all the default settings, you don't need to create an initializer.

```ruby
PaczkomatReader.setup do |config|
  config.cache_ttl = 120
  config.api_path = 'https://fakeurl.com/v1'
end
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/paczkomat_reader/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
