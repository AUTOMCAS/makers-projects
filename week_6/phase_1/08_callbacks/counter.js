let counter = 10;
const increment = () => {
  counter--;
  console.log(counter);
};

setInterval(increment, 1000);
