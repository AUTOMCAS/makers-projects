const ShoppingBasket = require('./shoppingBasket');

describe("ShoppingBasket", () => {
  const shoppingBasket = new ShoppingBasket();

  const candyDouble = { getPrice: () => 4.99, getName: () => 'Mars' };
  const candyDouble2 = { getPrice: () => 3.99, getName: () => 'Skittle' };

  describe('getTotalPrice', () => {
    it('gets the total price of no items in basket (0)', () => {
      expect(shoppingBasket.getTotalPrice()).toEqual(0)}) 

  describe('addItem', () => {
    it('adds an item to the basket', () => {
      shoppingBasket.addItem(candyDouble)
      expect(shoppingBasket.showBasket()).toStrictEqual([candyDouble])})
  })

    it('gets the total price of one Mars in basket (4.99)', () => {
      expect(shoppingBasket.getTotalPrice()).toEqual(4.99)})

    it('adds multiple different items to the basket', () => {
      shoppingBasket.addItem(candyDouble2)
      expect(shoppingBasket.showBasket()).toStrictEqual([candyDouble, candyDouble2])})

    it('adds a 3rd item to basket and returns updated price', () => {
      shoppingBasket.addItem(candyDouble2)
      expect(shoppingBasket.getTotalPrice()).toEqual(12.97)
    })

    describe('applyDiscount', ()=> {
      it('adds discount', () => {
        shoppingBasket.applyDiscount(2)
        expect(shoppingBasket.getTotalPrice()).toEqual(10.97)})
    })
})})

