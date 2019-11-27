def sum(numbers)
  sum_rows = []
  sum_columns = []

  numbers.each { |number| sum_rows << number.sum }
  numbers.transpose.each { |number| sum_columns << number.sum }

  puts "Max sum horizontal is: #{sum_rows.max}"
  puts "Max sum vertical is: #{sum_columns.max}"

end

numbers = [
  [6, 7, 8],
  [1, 4, 29],
  [4, 78, 12]
]

sum(numbers)
