def sum_numbers(numbers)
  sum_numbers_result = []
  number = ""

  numbers.each do |element|
    number = element.to_s.split("0")
    next if element.to_s[-1] == "0"
    sum_numbers_result << number.last.to_i
  end

  sum_numbers_result.sum
end

numbers = [1200000265, 1000002360, 1670000800, 1000006002, 1000000233]

sum_numbers numbers
