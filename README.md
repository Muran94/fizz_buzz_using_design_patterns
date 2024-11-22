# 概要
- 初歩的なプログラミングの実装問題であるFizzBuzzの実装において、デザインパターンを用いることでどの程度ブラッシュアップできるか検証。
- なお、一般的に想定される実装方法を下記に記載する。

```ruby
def fizz_buzz(number)
  if (number % 15 === 0)
    'FizzBuzz'
  elsif (number % 3 === 0)
    'Fizz'
  elsif (number % 5 === 0)
    'Buzz'
  else
    number
  end
end

puts fizz_buzz(1) # => 1
puts fizz_buzz(2) # => 2
puts fizz_buzz(3) # => Fizz
puts fizz_buzz(5) # => Buzz
puts fizz_buzz(15) # => FizzBuzz

```

# 技術選定
プログラム実装
- Ruby 3.3.6

自動テストの実装
- Minitest

# 使用しているデザインパターン
- 高凝集
- 完全コンストラクタ
- 不変オブジェクト
- カプセル化
- 早期return
- 目的駆動命名（『良いコード/悪いコードで学ぶ設計入門』の著者である仙塲さんの造語）

# 設計における備考
詳細は、lib/fizz_buzz.rbにコメントとして記載。
