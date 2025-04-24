const { add, divide } = require('../src/math');

test('adds numbers', () => {
  expect(add(2, 3)).toBe(5);
});

test('divides numbers', () => {
  expect(divide(10, 2)).toBe(5);
});

test('throws on divide by zero', () => {
  expect(() => divide(5, 0)).toThrow('Division by zero');
});
