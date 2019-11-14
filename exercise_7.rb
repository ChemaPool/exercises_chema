def product_numbers()
  numbers = [1, 2, 3, 4]
  numbers_result = []
  
  numbers.each do |iteration|
    numbers_result.insert(0, numbers.inject(:*) / iteration)
  end
  numbers_result.sort.reverse
end

product_numbers
