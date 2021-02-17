### 初始化

01. 安裝 python

02. 安裝 pytest
    - pip install pytest --user 的話需要增加 $PATH
    - 不知道路徑在哪邊可以用 pip3 show pytest 知道裝到哪邊去了，把路徑添加到 PATH 內

03. `pytest .` 試試看可不可以執行測試

### 步驟

01. 寫 `test_Normal()`

02. 測試 → 紅燈

03. 寫 `fizzbuzz(number)` 回傳 `str(number)`

04. 測試 → 綠燈

05. 寫 `test_Fizz()`

06. 測試 → 紅燈

07. 加入條件 `number % 3 == 0`

08. 測試 → 綠燈

09. 寫 `test_Buzz()`

10. 測試 → 紅燈

11.  加入條件 `number % 5 == 0`

12. 測試 → 綠燈

13. 寫 `test_FizzBuzz()`

14. 測試 → 紅燈

15. 寫 `number % 15 == 0`

16. 測試 → 綠燈
