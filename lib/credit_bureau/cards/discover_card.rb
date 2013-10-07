module CreditBureau

  module Cards

    class DiscoverCard < CreditBureau::Card

      class << self

        def iin_range
          ["6011"]
        end

        def card_length
          16
        end

      end

      def type
        "Discover"
      end

    end

  end

end