# Websms

This is trivial API implementation for http://websms.ru HTTP API

## Installation

Add this line to your application's Gemfile:

    gem 'websms'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install websms

## Usage

Add into environments/environment.rb after app configuration

    Websms.configure do |c|
      c.api_user     = 'your_user_name'
      c.api_password = 'your_api_password'
      c.client_id    = '' # optional. If set will be shown first.
    end

When you need to send sms call

        Websms::Sender.send_message phone_number, text

## Contributing

1. Fork it ( http://github.com/<my-github-username>/websms/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
