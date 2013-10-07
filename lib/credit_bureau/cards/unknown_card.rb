module CreditBureau

  module Cards

    class UnknownCard < CreditBureau::Card

      class << self

        def new(card_number)
          object = self.allocate
          object.send(:initialize, card_number)
          object
        end

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