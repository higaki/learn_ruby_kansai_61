#! /usr/bin/env ruby

require './ex3.rb'

class Person
  def === o
    case o
    when Class  then o.kind_of? Person
    when Person then @name.upcase === o.name.upcase
    else             false
    end
  end
end

p0 = Person.new('matz')
p1 = Person.new('Matz', Time.local(1965, 4, 14))
p2 = Person.new('matz', Time.local(1965, 4, 14))
p3 = Person.new('Matz', Time.local(1965, 4, 14), 165)
p4 = Person.new('dhh')

p0 === p1                        # => true
p1 === p2                        # => true
p1 === p3                        # => true
p1 === p4                        # => false

p0 === Person                   # => false
p0 === String                   # => false
p1 === Person                   # => false
p4 === Person                   # => false

p0 === 'matz'                   # => false

[p2, Person, String, 'matz', 1].map{|o| case p1 when o then :match end}
  # => [:match, :match, nil, nil, nil]
