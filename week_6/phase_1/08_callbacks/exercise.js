const printHello = () => {
  console.log('Chris rocks!');
};

const executeAfterDelay = (delay, printHello) => {
  setTimeout(printHello, delay * 1000);
};

executeAfterDelay(5, printHello);
