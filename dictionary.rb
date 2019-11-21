class Dictionary

  def self.words
    @words = [
        %w(departament departamento),
        %w(renter inquilino),
        %w(owner propietario),
        %w(rent renta)
    ]
  end

  def self.traducer(language, word)
    @words.each do |element|
      if element.include?(word.downcase)
        element.delete(word.downcase)
        puts element
      end
    end
  end

end

language = "english"
word = "rent"

Dictionary.words
Dictionary.traducer(language, word)
