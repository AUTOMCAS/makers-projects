const names = ['Anna', 'Laura', 'Josh', 'Min', 'Karla'];

const generateMessages = (array) => {
  newArray = array.map((name) => {
    return `Hi ${name}! 50% off our best candies for you today!`;
  });
  return newArray;
};

console.log(generateMessages(names));
