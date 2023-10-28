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

  def reverse(string)
    raise ArgumentError, 'Input must be a string' unless string.is_a?(String)

    array = string.chars

    array_as_string = array
    length_of_array_string = array_as_string.length
    reversed_string_array = []

    (length_of_array_string - 1).downto(0) do |index|
      reversed_string_array << array_as_string[index]
    end
    reversed_string_array.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
