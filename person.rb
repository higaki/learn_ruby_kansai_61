#! /usr/bin/env ruby

RUBY_DESCRIPTION # => "ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-darwin12.0]"

class Person; end

obj = Person.new                # => #<Person:0x007fa46d013ab0>

obj.class                       # => Person
Person.superclass               # => Object
Person.ancestors                # => [Person, Object, Kernel, BasicObject]
