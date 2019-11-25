const listData = ["13.09.2017", "13.aa.2018", "44.09.2018", "13.09.7"];
let counterPosition = 0;
let sumTotal = 0;

const sumListData = () => {
  listData.forEach(data => {
    const elementData = data.split(".")[counterPosition];
    if (!isNaN(elementData)){
      sumTotal += parseInt(elementData);
      counterPosition += 1;
    }
  });
  return sumTotal;
}

sumListData();
