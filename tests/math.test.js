const { multiply } = require('../src/math');

test('multiplies positive numbers', () => {
  expect(multiply(6, 7)).toBe(42);
});

test('multiplies with zero', () => {
  expect(multiply(5, 0)).toBe(0);
});

test('multiplies negative numbers', () => {
  expect(multiply(-4, -3)).toBe(12);
});

test('multiplies positive and negative', () => {
  expect(multiply(5, -2)).toBe(-10);
});
