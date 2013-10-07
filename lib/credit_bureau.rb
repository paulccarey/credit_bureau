require "active_support/core_ext/class/subclasses"

require "credit_bureau/version"
require "credit_bureau/luhn_number"
require "credit_bureau/card"



module CreditBureau

  class UnknownCardType < StandardError; end
  class InvalidCardNumberForType < StandardError; end

end
