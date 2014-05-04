#! /usr/bin/env ruby

RUBY_DESCRIPTION # => "ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-darwin12.0]"

class Person; end

obj = Person.new                # => #<Person:0x007fe9930886d8>

obj.class                       # => Person
Person.superclass               # => Object
Person.ancestors                # => [Person, Object, Kernel, BasicObject]


class Person
  def initialize name
    @name = name
  end
end

matz = Person.new('matz')       # => #<Person:0x007fe9930236c0 @name="matz">


class Person
  attr_reader :name
end

matz.name                       # => "matz"
