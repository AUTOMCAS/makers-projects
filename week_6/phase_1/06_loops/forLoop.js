const oddOrEven = (number) => {
  if (number % 2 === 0) {
    return `${number} is even`;
  } else {
    return `${number} is odd`;
  }
};

for (let i = 0; i <= 20; i++) {
  console.log(oddOrEven(i));
}

module.exports = oddOrEven;
