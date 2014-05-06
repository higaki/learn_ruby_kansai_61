#! /usr/bin/env ruby

require './person.rb'

class Person
  def initialize name, born = nil, height = nil, weight = nil
    @name, @born, @height, @weight = name, born, height, weight
  end

  attr_reader :height
end

kazuhiko = Person.new('kazuhiko', Time.local(1972, 5, 8), 188, 59)

kazuhiko                        # => kazuhiko(41)
kazuhiko.name                   # => "kazuhiko"
kazuhiko.height                 # => 188
begin
  kazuhiko.weight               # => 
rescue NoMethodError => ex
  ex                            # => #<NoMethodError: undefined method `weight' for kazuhiko(41):Person>
end

