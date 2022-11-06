const multiply = require('./multiply');

describe('multiply', () => {
  it('returns 9', () => {
    expect(multiply(3, 3)).toBe(9);
  });

  it('multiplies 4 x 4 = 16', () => {
    expect(multiply(4, 4)).toBe(16);
  });
});
