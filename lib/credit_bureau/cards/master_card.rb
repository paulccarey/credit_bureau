module CreditBureau

  module Cards

    class MasterCard < CreditBureau::Card

      class << self

        def iin_range
          (51..55).to_a.collect(&:to_s)
        end

        def card_lengths
          [16]
        end

      end

      def type
        "MasterCard"
      end

    end

  end

end