const searchCandies = require('./searchCandies');

describe('searchCandies', () => {
  it('filters by start of candy name and max price', () => {
    expect(searchCandies('Maltesers', 10)).toEqual(['Maltesers']);
    expect(searchCandies('Ma', 10)).toEqual(['Mars', 'Maltesers']);
    expect(searchCandies('Ma', 2)).toEqual(['Mars']);
    expect(searchCandies('S', 10)).toEqual(['Skitties', 'Skittles', 'Starburst']);
    expect(searchCandies('S', 4)).toEqual(['Skitties', 'Skittles']);
    expect(searchCandies('ma', 10)).toEqual(['Mars', 'Maltesers']);
  });
});
