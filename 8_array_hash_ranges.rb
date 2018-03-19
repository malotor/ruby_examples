#!/usr/bin/ruby

puts "1. ARRAY"

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

puts "2. HASHES"

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

puts "3. RANGES"

(10..15).each do |n|
   print n, ' '
end


a = { a: 1, b: 2, c: 3}
puts a.to_s
puts a[:c]