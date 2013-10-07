module CreditBureau

  module Cards

    class AmexCard < CreditBureau::Card

      class << self

        def matches?(card_number)
          ["34","37"].include?(card_number.to_s[0,2]) && card_number.to_s.length == 15
        end

      end

      def type
        "AMEX"
      end

    end

  end

end