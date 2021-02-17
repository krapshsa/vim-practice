### 初始化

01. 安裝 php 以及 composer

02. 在現在目錄 `composer install` 安裝 phpunit

03. 在現在目錄 `composer dump-autoload` 建出 autoloader

04. 在現在目錄 `composer test` 檢查是否可以跑完 Unit Test

### 步驟

01. 寫 `test_Normal()`

02. 測試 → 紅燈

03. 寫 `fizzbuzz(int $number)` 回傳 `(string)$number`

04. 測試 → 綠燈

05. 寫 `test_Fizz()`

06. 測試 → 紅燈

07. 加入條件 `$number % 3 == 0`

08. 測試 → 綠燈

09. 寫 `test_Buzz()`

10. 測試 → 紅燈

11.  加入條件 `$number % 5 == 0`

12. 測試 → 綠燈

13. 寫 `test_FizzBuzz()`

14. 測試 → 紅燈

15. 寫 `$number % 15 == 0`

16. 測試 → 綠燈
