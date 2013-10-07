module CreditBureau

  module Cards

    class AmexCard < CreditBureau::Card

      class << self

        def iin_range
          ["34","37"]
        end

        def card_length
          15
        end

      end

      def type
        "AMEX"
      end

    end

  end

end