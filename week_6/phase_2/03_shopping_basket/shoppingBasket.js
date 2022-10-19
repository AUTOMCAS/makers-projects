class ShoppingBasket {
  constructor(basket = []) {
  this.basket = basket;
  this.discount = 0;
  }

  getTotalPrice() {
    let sum = 0
    this.basket.map((candy) => (sum += candy.getPrice()));
    return sum - this.discount;
  }

  applyDiscount(discount) {
   this.discount = discount;
  }

  addItem(candy) {
    this.basket.push(candy);
  }

  showBasket() {
    return this.basket;
  }
}
// Export the class
module.exports = ShoppingBasket; 