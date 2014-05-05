# Ruby初級者向けレッスン 49回
## クラス

### 演習問題1
属性として身長と体重を追加しよう。  
体重は秘密にしよう。

    require './person.rb'

    class Person
      def initialize ...

[解答例](https://github.com/higaki/learn_ruby_kansai_61/blob/master/ex1.rb)

### 演習問題2
BMI を計算するメソッドを追加しよう。  

    BMI = 体重[kg] / (身長[m] ** 2)

[解答例](https://github.com/higaki/learn_ruby_kansai_61/blob/master/ex2.rb)

### 演習問題3
Person#<=> を書き直そう。  
その妥当な仕様は?

    p0 = Person.new('matz')
    p1 = Person.new('Matz', Time.local(1965, 4, 14))

    p0 <=> p1   # => ?

[解答例](https://github.com/higaki/learn_ruby_kansai_61/blob/master/ex3.rb)

### 演習問題4
Person#=== を定義しよう。  
その妥当な仕様は?

    p0 = Person.new('matz')
    p1 = Person.new('Matz', Time.local(1965, 4, 14))

    p0 === p1   # => ?

[解答例](https://github.com/higaki/learn_ruby_kansai_61/blob/master/ex4.rb)
