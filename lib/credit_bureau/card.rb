module CreditBureau

  class Card

    attr_reader :card_number

    class << self

      def new(card_number)
        self == Card ? instantiate_subclass(card_number) : instantiate_self(card_number)
      end

      def matches?(card_number)
        raise NotImplementedError.new("Ensure subclasses of card implement .matches?")
      end

      private

      def instantiate_subclass(card_number)
        klass = subclasses.find do |card_type|
          card_type.matches? card_number
        end
        raise UnknownCardType if klass.nil?
        klass.new(card_number)
      end

      def instantiate_self(card_number)
        raise InvalidCardNumberForType unless self.matches? card_number
        object = self.allocate
        object.send(:initialize, card_number)
        object
      end

    end

    def initialize(card_number)
      @card_number = card_number
    end

  end

end