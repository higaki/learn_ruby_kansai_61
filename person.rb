#! /usr/bin/env ruby

RUBY_DESCRIPTION # => "ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-darwin12.0]"

class Person; end

obj = Person.new                # => #<Person:0x007ff31b167298>

obj.class                       # => Person
Person.superclass               # => Object
Person.ancestors                # => [Person, Object, Kernel, BasicObject]


class Person
  def initialize name # !> previous definition of initialize was here
    @name = name
  end
end

matz = Person.new('matz')       # => #<Person:0x007ff31b165f10 @name="matz">


class Person
  attr_reader :name
end

matz.name                       # => "matz"


class Person
  def initialize name, born # !> method redefined; discarding old initialize
    @name, @born = name, born
  end

  attr_accessor :born
end

matz.methods.map(&:to_s).grep(/born/) # => ["born", "born="]


matz.born = Time.local(1965, 4, 14)
dhh = Person.new('dhh', Time.local(1979, 10, 15))

matz.born                       # => 1965-04-14 00:00:00 +0900
dhh.born                        # => 1979-10-15 00:00:00 +0900


class Person
  def age
    (Time.now.strftime('%Y%m%d').to_i - @born.strftime('%Y%m%d').to_i) / 1_00_00
  end
end

matz.age                        # => 49
dhh.age                         # => 34


matz.to_s                       # => "#<Person:0x007ff31b165f10>"
matz.method(:to_s)              # => #<Method: Person(Kernel)#to_s>

class Person
  def to_s
    "#{@name}(#{age})"
  end
end

matz.to_s                       # => "matz(49)"
dhh.to_s                        # => "dhh(34)"
matz.method(:to_s)              # => #<Method: Person#to_s>


person = Marshal.load(Marshal.dump matz)

person == dhh                   # => false
person == matz                  # => false


class Person
  include Comparable

  def <=> o
    @name <=> o.name
  end
end

person == matz                  # => true
person == dhh                   # => false
matz <=> dhh                    # => 1
matz > dhh                      # => true
