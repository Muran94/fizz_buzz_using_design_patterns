class FizzBuzz
  private attr_reader :number

  def initialize(number)
    raise ArgumentError, 'Argument `number` is required.'                          if number.nil?
    raise ArgumentError, 'Argument `number` must be an instance of Integer class.' unless number.is_a?(Integer)
    raise ArgumentError, 'Argument `number` must be greater than 0.'               unless number > 0

    @number = number

    freeze
  end

  def to_s
    return 'FizzBuzz' if number % 15 === 0
    return 'Fizz'     if number % 3 === 0
    return 'Buzz'     if number % 5 === 0

    number.to_s
  end
end
