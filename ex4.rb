#! /usr/bin/env ruby

require './ex3.rb'

class Person
  def === o
    return o.name == "Person" if o.kind_of? Class
    return false unless o.instance_of? Person
    @name.upcase === o.name.upcase
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

p0 === Person                   # => true
p0 === String                   # => false
p1 === Person                   # => true
p4 === Person                   # => true

p0 === 'matz'                   # => false

[p2, Person, String, 'matz', 1].map{|o| case p1 when o then :match end}
  # => [:match, :match, nil, nil, nil]
