const add = require('./add');

describe('add', () => {
  it('returns 4', () => {
    expect(add(2, 2)).toBe(4);
  });

  it('adds 2 and 3', () => {
    expect(add(2, 3)).toBe(5);
  });
});
