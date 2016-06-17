# RequestThrottler

When you are creating apis you want them to safe from a robot requests
here is the gem to safe you from these kind of traffic. for example a hacker
created a script to make 1 DOS attack to your site so you can save yourself 
from that attack.

## pre-requirement

You should have redis gem in your gemfile redis up and running.
you need to set a redis path in you initializers/request_throttler.rb

    $ config.store = Redis.new(url: 'localhost:6379', namespace: 'request_throttler')

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'request_throttler'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install request_throttler
To copy request throttler config file:

    $ rails g request_throttler

## Usage

create a method to use before filter for you all requests
to check the threshold for you apis use this mehtod:

    $ include RequestThrottler # in your applicatio controller
    $ threshold?(key) # true or false

If its value true then take action. the key can be request user system ip or access_token


## Contributing

1. Fork it ( https://github.com/dilkhush/request_throttler/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
