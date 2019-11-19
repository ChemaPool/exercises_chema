class Contact
  def self.all
    first_contact = {:age => 20, :first_name => "Jose", :last_name => "Lopez", :genre => :M}
    second_contact = {:age => 21, :first_name => "Oscar", :last_name => "Perez", :genre => :M}
    third_contact = {:age => 22, :first_name => "Martha", :last_name => "Sanchez", :genre => :F}

    contacts = []
    contacts.push(first_contact, second_contact, third_contact)
    contacts
  end
  def self.find_by(key, value)
    first_contact = {:age => 20, :first_name => "Jose", :last_name => "Lopez", :genre => :M}
    second_contact = {:age => 21, :first_name => "Oscar", :last_name => "Perez", :genre => :M}
    third_contact = {:age => 22, :first_name => "Martha", :last_name => "Sanchez", :genre => :F}

    contacts = []
    contacts.push(first_contact, second_contact, third_contact)

    contacts.each do |value_contact|
      next if value_contact[key] != value
        puts "Edad: #{value_contact[:age]}"
        puts "Nombre: #{value_contact[:first_name]}"
        puts "Apellido: #{value_contact[:last_name]}"
        puts "Genero: #{value_contact[:genre]}"
    end
  end
end

Contact.all
Contact.find_by(:age, 20)
