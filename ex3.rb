#! /usr/bin/env ruby

require './ex2.rb'

class Person
  def <=> o
    return nil unless o.kind_of? Person
    [@name.upcase, @born] <=> [o.name.upcase, o.born]
  end
end

p0 = Person.new('matz')
p1 = Person.new('Matz', Time.local(1965, 4, 14))
p2 = Person.new('matz', Time.local(1965, 4, 14))
p3 = Person.new('Matz', Time.local(1965, 4, 14), 165)

p0 <=> p1                        # => nil
p1 <=> p2                        # => 0
p1 <=> p3                        # => 0
p0 <=> "matz"                    # => nil

p0 == p1                         # => false
p1 == p2                         # => true
p1 == p3                         # => true
