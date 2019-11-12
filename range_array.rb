def intersection_numbers(list_numbers)
  counter_intersection = 0

  list_numbers.each_with_index do |number, index|
    index += 1
    range_one = (number[0]..number[1])
    while index < list_numbers.size
      range_two = (list_numbers[index][0]..list_numbers[index][1])
      counter_intersection += 1 if intersection(range_one, range_two)
      index += 1
    end
  end

  counter_intersection
end

def intersection(range_one, range_two)
  return nil if (range_one.max < range_two.begin || range_two.max < range_one.begin)
  [range_one.begin, range_two.begin].max..[range_one.max, range_two.max].min
end

list_numbers = [
  [40, 85],
  [10, 60],
  [70, 160]
]

intersection_numbers(list_numbers)
