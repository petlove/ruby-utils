# [Ruby::Utils](https://github.com/petlove/ruby-utils)
[![Build Status](https://travis-ci.org/petlove/ruby-utils.svg?branch=master)](https://travis-ci.org/petlove/ruby-utils)
[![Maintainability](https://api.codeclimate.com/v1/badges/5bfceaccaa230289ed87/maintainability)](https://codeclimate.com/github/petlove/ruby-utils/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/5bfceaccaa230289ed87/test_coverage)](https://codeclimate.com/github/petlove/ruby-utils/test_coverage)

Ruby Utils

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-utils', github: 'petlove/ruby-utils'
```

## Usage

Include this code in your class:
```ruby
require 'ruby/utils'
include Ruby::Utils
```
### Dig

```ruby
# dig(hash, keys, default = nil)

dig({ a: { b: 'c' } }, %i(a b))
# => 'c'
dig({ a: { b: 'c' } }, %i(a b c))
# => nil
dig({ a: { b: 'c' } }, %i(a b c), {})
# => {}
```

### Compact

```ruby
# compact(hash)

compact({ a: 'a', b: nil })
# => { a: 'a' }
```

### Slice

```ruby
# slice(hash, fields)

hash_compact({ a: 'a', b: nil })
# => { a: 'a' }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
