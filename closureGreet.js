const getWelcome = word => {
  return () => { return `Hi, ${word}!` };
}

const greetHomie = getWelcome('Homie');
const greetFco = getWelcome('Fco');

console.log(greetHomie());
console.log(greetFco());
