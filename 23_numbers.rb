#!/usr/bin/ruby

puts 20/3

puts 20/3.to_f

puts 20.0/3

puts 20/3.0

def mult(a,b)
  a.to_f * b.to_f
end

puts "The solution is #{mult(2,4)}"