require "active_support/core_ext/class/subclasses"

require "credit_bureau/version"
require "credit_bureau/luhn_number"
require "credit_bureau/card"

require "credit_bureau/cards/amex_card"
require "credit_bureau/cards/discover_card"
require "credit_bureau/cards/master_card"

module CreditBureau

  class UnknownCardType < StandardError; end
  class InvalidCardNumberForType < StandardError; end

end
