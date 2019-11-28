let sumRows = [];
let sumColumns = [];
const listNumbers = [
   [6, 7, 8],
   [1, 4, 29],
   [4, 78, 12]
];

const maxSumRow = () => {
  listNumbers.forEach(function(number) {
    sumRows.push(sumTotal(number));
    maxNumber = Math.max(...sumRows);
  });
  return `Max sum horizontal is: ${maxNumber}`;
}

const maxSumColumn = () => {
  transpose(listNumbers).forEach(function(number) {
    sumColumns.push(sumTotal(number));
    maxNumber = Math.max(...sumColumns);
  });
  return `Max sum vertical is: ${maxNumber}`;
}

const sumTotal = (number) => {
  const sum = number.reduce((number,total) => number + total);
  return sum;
}

const transpose = (listNumbers) => {
  return Object.keys(listNumbers[0]).map((columns) => {
    return listNumbers.map((rows) => {
      return rows[columns];
    });
  });
}

console.log(maxSumRow());
console.log(maxSumColumn());
