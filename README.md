# Segfault

The helper to easily abort your ruby program with segmentation fault error.

## Installation

Add this line to your application's Gemfile:

    gem 'segfault'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install segfault

## Usage

```ruby
require 'segfault'

Segfault.dereference_null
```

## Contributing

1. Fork it ( https://github.com/avsej/segfault/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
