const namesAndDiscounts = [
  { name: 'Anna', discount: 50 },
  { name: 'Laura', discount: 40 },
  { name: 'Josh', discount: 30 },
  { name: 'Min', discount: 50 },
  { name: 'Karla', discount: 60 },
];

const generateMessages = (array) => {
  newArray = array.map((object) => {
    return `Hi ${object.name}! ${object.discount}% off our best candies for you today!`;
  });
  return newArray;
};

console.log(generateMessages(namesAndDiscounts));
