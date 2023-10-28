class Solver
  def factorial(number)
    raise ArgumentError, 'Number must be non-negative' if number.negative?

    if number.zero?
      1
    else
      factorial = 1
      (1..number).each do |i|
        factorial *= i
      end
      factorial
    end
  end
end
