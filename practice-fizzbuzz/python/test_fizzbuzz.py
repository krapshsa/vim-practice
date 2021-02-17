import fizzbuzz

def test_Normal():
    assert fizzbuzz.fizzbuzz(7) == '7'

def test_Fizz():
    assert fizzbuzz.fizzbuzz(3) == 'Fizz'

def test_Buzz():
    assert fizzbuzz.fizzbuzz(5) == 'Buzz'

def test_FizzBuzz():
    assert fizzbuzz.fizzbuzz(15) == 'FizzBuzz'
