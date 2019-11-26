def calculate(number_one, number_two)
  yield(number_one, number_two)
end

puts calculate(15, 10) { |number_one, number_two| number_one - number_two }
puts calculate(15, 10) { |number_one, number_two| number_one + number_two }
puts calculate(15, 10) { |number_one, number_two| number_one * number_two }
puts calculate(15, 10) { |number_one, number_two| number_one / number_two }
