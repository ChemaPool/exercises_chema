class Contact
  def self.all
    [
      { age: 20, first_name: "Jose", last_name: "Lopez", genre: :M},
      { age: 21, first_name: "Oscar", last_name: "Perez", genre: :M},
      { age: 22, first_name: "Martha", last_name: "Sanchez", genre: :F}
    ]
  end

  def self.find_by(key, value)
    all.detect { |contact| return contact if contact[key] == value }
    puts "No matches"
  end
end

Contact.find_by(:first_name, "Martha")
