#!/usr/bin/env ruby

require "credit_bureau"

card_numbers = [4111111111111111,
                4111111111111,
                4012888888881881,
                378282246310005,
                6011111111111117,
                5105105105105100,
                #"5105 1051 0510 5106",
                9111111111111111
]

if ARGV[0]
  card_numbers = ARGV[0].split
end

card_numbers.each do |number|
  puts CreditBureau::Card.new(number).to_s
end


