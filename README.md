# MightyHash

[![Build Status](https://travis-ci.org/msievers/mighty_hash.svg)](https://travis-ci.org/msievers/mighty_hash)
[![Test Coverage](https://codeclimate.com/github/msievers/mighty_hash/badges/coverage.svg)](https://codeclimate.com/github/msievers/mighty_hash/coverage)
[![Code Climate](https://codeclimate.com/github/msievers/mighty_hash/badges/gpa.svg)](https://codeclimate.com/github/msievers/mighty_hash)
[![Dependency Status](https://gemnasium.com/msievers/mighty_hash.svg)](https://gemnasium.com/msievers/mighty_hash)

## Usage

### `.add`

```ruby
require "mighty_hash"

hash = {}

MightyHash.add(hash, :key1, "value")
MightyHash.add(hash, "key2", "value")
MightyHash.add(hash, "key2", "another_value")
MightyHash.add(hash, "key3/key4", "value")
MightyHash.add(hash, "key3/:key5/key6", "value")
MightyHash.add(hash, "key3", "key7", :key8, "value")

# will not add anything because value is nil? or empty?
MightyHash.add(hash, "foo", nil)
MightyHash.add(hash, "foo/bar", "")
MightyHash.add(hash, "foo", "bar", "muff", [])

hash
# =>
# {
#   :key1=>"value",
#   "key2"=>["value", "another_value"],
#   "key3"=>{
#     "key4"=>"value",
#     :key5=>{
#       "key6"=>"value"
#     },
#     "key7"=>{
#       :key8=>"value"
#     }
#   }
# }
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mighty_hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mighty_hash

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/msievers/mighty_hash.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

