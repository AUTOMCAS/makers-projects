class Candy {
  constructor(candyName, price) {
    this.candyName = candyName;
    this.price = price;
  }

  getName() {
    return this.candyName;
  }

  getPrice() {
    return this.price;
  }
}

// Export the class
module.exports = Candy;