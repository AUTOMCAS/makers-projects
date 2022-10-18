const checkLength = (phoneNumber) => {
  if (phoneNumber.length <= 10) {
    return true;
  } else {
    return false;
  }
};

const filterLongNumbers = (phoneNumberArray) => {
  newArray = phoneNumberArray.filter(checkLength);
  return newArray;
};

const numbers = [
  '1763687364',
  '4763687363',
  '7867867862',
  'aaaaaaaabbbbbbbcccccdddddddd', // this element should be filtered
];

console.log(filterLongNumbers(numbers));
