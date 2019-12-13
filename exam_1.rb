def find_number(list_numbers, score)
  list_numbers.each do |number, text_message|
    return "#{text_message}" if score < number
  end
end

list_numbers = { 0 => "Sin fico", 10 => "Con poco fico", 20 => "Con fico regular" }
score = 10

find_number(list_numbers, score)
