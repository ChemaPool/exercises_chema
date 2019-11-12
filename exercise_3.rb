require 'date'

def date_list(first_date, second_date, date_number)
  first_date_convert = Date.parse(first_date)
  second_date_convert = Date.parse(second_date)
  arr = []
  month = first_date_convert.mon

  while month <= second_date_convert.mon do
    arr.push(Date.new(2019, month, date_number).to_s)
    month += 1
  end
  return arr

end

date_list('2019-02-03', '2019-09-12', 5)