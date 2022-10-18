const addToBatch = (array, number) => {
  if (array.length <= 5) {
    newArray = array.concat(number);
    return newArray;
  } else {
    return array;
  }
};

console.log(addToBatch([1, 2, 3, 4], 3));
