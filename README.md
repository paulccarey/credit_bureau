# CreditBureau

Checks credit/debit cards for known types and validity.

Fulfills requirements of http://rubyquiz.com/quiz122.html

## Installation

Add this line to your application's Gemfile:

    gem 'credit_bureau'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credit_bureau

## Usage

From the command line.

$ card_check

This outputs example card info

You can also specify your own numbers, either singular or multi-line

$ card_check 4111111111111111

$ card_check "4111111111111111
              4111111111111
              4012888888881881
              378282246310005
              6011111111111117
              5105105105105100
              9111111111111111"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
