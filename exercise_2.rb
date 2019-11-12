#Ejercicio palindrono

def palindromo?(word)
  word_reverse = word.reverse
  word.eql?(word_reverse)
end
word = "aerea"
palindromo?(word)
