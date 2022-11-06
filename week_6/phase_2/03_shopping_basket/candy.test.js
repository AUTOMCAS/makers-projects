const Candy = require('./candy');

describe('Candy', () => {
  const candy = new Candy('Mars', 1.49);
  describe('getName', () => {
    it('returns Mars when given the mars object', () => {
      expect(candy.getName()).toBe('Mars');
    });
  });

  describe('getPrice', () => {
    it('returns 1.49 when given the mars object', () => {
      expect(candy.getPrice()).toBe(1.49);
    });
  });
});
 