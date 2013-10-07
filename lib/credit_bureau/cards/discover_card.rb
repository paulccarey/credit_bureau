module CreditBureau

  module Cards

    class DiscoverCard < CreditBureau::Card

      class << self

        def matches?(card_number)
          ["6011"].include?(card_number.to_s[0,4]) && card_number.to_s.length == 16
        end

      end

      def type
        "Discover"
      end

    end

  end

end