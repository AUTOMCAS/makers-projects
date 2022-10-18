const fizzbuzz = require('./fizzbuzz');

describe('fizzbuzz', () => {
  it('Returns Fizz', () => {
    expect(fizzbuzz(3)).toBe('Fizz');
  });
  it('Returns Buzz', () => {
    expect(fizzbuzz(5)).toBe('Buzz');
  });
  it('Returns FizzBuzz', () => {
    expect(fizzbuzz(15)).toBe('FizzBuzz');
  });
  it('Returns INT', () => {
    expect(fizzbuzz(8)).toBe(8);
  });
});
