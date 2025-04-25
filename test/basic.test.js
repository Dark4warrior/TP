const { hello } = require('../index');

test('returns proper greeting', () => {
  expect(hello('Alice')).toBe('Hello, Alice!');
});
