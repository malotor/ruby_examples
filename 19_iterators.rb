#!/usr/bin/ruby

# The each iterator returns all the elements of an array or a hash.

ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end

#The collect iterator returns all the elements of a collection.

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b


a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b
