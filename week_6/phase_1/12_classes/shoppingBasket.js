class ShoppingBasket {
  constructor() {
    this.basket = [];
  }

  addItem(item) {
    this.basket.push(item);
  }

  showBasket() {
    return this.basket;
  }

  getTotalPrice() {
    let total = 0;
    this.basket.forEach((candy) => {
      total += candy.getPrice();
    });
    return total;
  }
}

module.exports = ShoppingBasket;

// let Candy = require('./candy');
// let ShoppingBasket = require('./shoppingBasket');
// let basket = new ShoppingBasket;
// let candy = new Candy('Mars', 4.99);
// basket.addItem(candy);
// basket.addItem(new Candy('Skittle', 3.99));

// num.forEach((number) => {
//   count += number;
// });
