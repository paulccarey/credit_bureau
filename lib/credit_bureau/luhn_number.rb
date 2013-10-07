module CreditBureau

  class LuhnNumber

    attr_reader :value

    def initialize(value)
      @value = value
    end

    def valid?
      sum_digits_total % 10 == 0
    end

    private

    def sum_digits_total
      sum_total = 0
      value.to_s.reverse.chars.each_slice(2) do |single_candidate, double_candidate |
        sum_total += single_candidate.to_i
        sum_total += double_product_total(double_candidate.to_i)
      end
      sum_total
    end

    def double_product_total(double_candidate)
      double_product_total = double_candidate * 2
      double_product_total > 9 ? split_and_add_number(double_product_total) : double_product_total
    end

    def split_and_add_number(doubled_value)
      doubled_value = doubled_value.to_s
      doubled_value[0].to_i+doubled_value[1].to_i
    end

  end

end
