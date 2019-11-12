require 'date'

def date_list(first_date, second_date, date_number)
  first_date_convert = Date.parse(first_date)
  second_date_convert = Date.parse(second_date)
  dates = []
  month = first_date_convert.mon
  year = second_date_convert.year

  while month <= second_date_convert.mon do
    dates.push(Date.new(year, month, date_number).to_s)
    month += 1
  end

  dates
end

date_list('2019-02-03', '2019-09-12', 5)
