#!/usr/bin/ruby

puts "1. Unless statement"
x = 1
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end

puts "2. Unless modifier"

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var
