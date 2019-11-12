def find_number(list_numbers, score)
  list_numbers.each do |number, text_message|
    case
      when score <= number then return "#{text_message}"
    end
  end
end

list_numbers = { 0 => "Sin fico", 10 => "Con poco fico", 20 => "Con fico regular" }
score = 4

find_number(list_numbers, score)
