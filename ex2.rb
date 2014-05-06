#! /usr/bin/env ruby

require './ex1.rb'

class Person
  def bmi
    @weight / (@height.to_f / 100) ** 2
  end
end

kazuhiko = Person.new('kazuhiko', Time.local(1972, 5, 8), 188, 59)
kazuhiko.bmi                    # => 16.693073789044817
