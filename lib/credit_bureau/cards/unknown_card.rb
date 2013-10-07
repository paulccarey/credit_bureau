module CreditBureau

  module Cards

    class UnknownCard < CreditBureau::Card

      class << self

        def matches?(card_number)
          false
        end

      end

      def type
        "Unknown"
      end

    end

  end

end