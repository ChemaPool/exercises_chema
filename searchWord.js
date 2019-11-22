const peopleNames = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const thing = ["Petroleo", "Carne", "Rosca"]
const names = peopleNames.concat(animals, thing);

const searchWord = term => {
  let wordsFound = []
  names.forEach(word => {
    if (word.toLowerCase().includes(term.toLowerCase())){
      wordsFound.push(word.toLowerCase());
    }
  });
  return wordsFound;
}

searchWord('pE');
