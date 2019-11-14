def product_numbers(numbers)
  numbers_result = []
  
  numbers.each do |number|
    numbers_result.push(numbers.inject(:*) / number)
  end

  numbers_result
end

numbers = [1, 2, 3, 4]

product_numbers numbers
