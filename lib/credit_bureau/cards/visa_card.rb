module CreditBureau

  module Cards

    class VisaCard < CreditBureau::Card

      class << self

        def iin_range
          ["41"]
        end

        def card_lengths
          [13,16]
        end

      end

      def type
        "VISA"
      end

    end

  end

end