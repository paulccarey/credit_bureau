module CreditBureau

  class Card

    attr_reader :card_number

    class << self

      def new(card_number)
        self == Card ? instantiate_subclass(card_number) : instantiate_self(card_number)
      end

      def iin_range
        raise NotImplementedError.new("Ensure subclasses of card implement .iin_range")
      end

      def card_lengths
        raise NotImplementedError.new("Ensure subclasses of card implement .card_lengths")
      end

      def matches?(card_number)
        iin_range.include?(iin_for(card_number)) && card_lengths.include?(card_number.to_s.length)
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

      def iin_for card_number
        range_bound=iin_range.first.to_s.length
        card_number.to_s[0,range_bound]
      end

    end

    def initialize(card_number)
      @card_number = card_number
    end

    def valid?
      @valid ||= LuhnNumber.new(card_number).valid?
    end

    def type
      raise NotImplementedError.new("Ensure subclasses of card implement #type")
    end

    def to_s
      "#{type}: #{card_number}       (#{valid? ? "valid" : "invalid"})"
    end



  end

end