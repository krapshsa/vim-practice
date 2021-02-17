<?php

namespace Tests;

use App\FizzBuzz;
use PHPUnit\Framework\TestCase;

class FizzBuzzTest extends TestCase
{
    private $fizzBuzz;

    public function test_Normal()
    {
        self::assertEquals('7', $this->fizzBuzz->fizzbuzz(7));
    }

    public function test_Fizz()
    {
        self::assertEquals('Fizz', $this->fizzBuzz->fizzbuzz(3));
    }

    public function test_Buzz()
    {
        self::assertEquals('Buzz', $this->fizzBuzz->fizzbuzz(5));
    }

    public function test_FizzBuzz()
    {
        self::assertEquals('FizzBuzz', $this->fizzBuzz->fizzbuzz(15));
    }

    protected function setUp(): void
    {
        $this->fizzBuzz = new FizzBuzz();
    }

}
