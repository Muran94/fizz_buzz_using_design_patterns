require_relative './lib/fizz_buzz'

1.upto(100) do |number|
  puts FizzBuzz.new(number).to_s
end
