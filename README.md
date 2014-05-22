# anyhash

Hash functions based on [RHash](https://github.com/rhash/RHash).

## Installation

Install RHash:

    # Ubuntu
    $ sudo apt-get install rhash

    # Mac OS
    $ brew install rhash

Add this line to your application's Gemfile:

    gem 'anyhash'

Or install it yourself as:

    $ gem install anyhash

## Usage

    > Anyhash.gost('a')
    => "d42c539e367c66e9c88a801f6649349c21871b4344c6a573f849fdce62f314dd"

    > Anyhash.gost_cryptopro('a')
    => "e74c52dd282183bf37af0079c9f78055715a103f17e3133ceff1aacf2f403011"

## Contributing

1. Fork it ( https://github.com/bashmish/anyhash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
