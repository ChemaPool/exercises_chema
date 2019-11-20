class Contact
  def self.all
    @contacts = [
      { age: 20, first_name: "Jose", last_name: "Lopez", genre: :M},
      {age: 21, first_name: "Oscar", last_name: "Perez", genre: :M},
      {age: 22, first_name: "Martha", last_name: "Sanchez", genre: :F}
    ]
    @contacts
  end
  def self.find_by(key, value)
    @contacts.each do |value_contact|
      next unless value_contact[key].eql?(value)
        puts "Age: #{value_contact[:age]}"
        puts "Firts Name: #{value_contact[:first_name]}"
        puts "Last Name: #{value_contact[:last_name]}"
        puts "Genre: #{value_contact[:genre]}"
    end
  end
end

Contact.all
Contact.find_by(:last_name, "Sanchez")
