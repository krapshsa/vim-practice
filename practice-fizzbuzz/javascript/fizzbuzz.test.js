import fizzbuzz from './fizzbuzz.js'

test('returns "7" for the number 7', () => {
  expect(fizzbuzz(7)).toEqual('7');
});

test('returns "Fizz" for the number 3', () => {
  expect(fizzbuzz(3)).toEqual('Fizz');
});

test('returns "Buzz" for the number 5', () => {
  expect(fizzbuzz(5)).toEqual('Buzz');
});

test('returns "FizzBuzz" for the number 15', () => {
  expect(fizzbuzz(15)).toEqual('FizzBuzz');
});
