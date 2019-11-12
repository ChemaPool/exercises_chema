def in_groups(list_words, limit)
  list_words_new = []
  word = list_words.join("").split("")

  word.each_slice(limit).to_a.each do |words|
    list_words_new << words.join
  end
  list_words_new

end

list_words = ['hola', 'este', 'es', 'un', 'nuevo', 'mensaje']
limit = 10

in_groups(list_words, limit)
