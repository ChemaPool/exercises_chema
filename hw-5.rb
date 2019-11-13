data = {
  enterprise: 'Homie',
  years: 4
}

def update_info(data, key, value)
  if data.has_key?(key)
    data[key] = value
    data
  else
    data[key] = value
    data
  end
end

key = :employees
value = 100

update_info(data, key, value)
