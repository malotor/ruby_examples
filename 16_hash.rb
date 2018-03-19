#!/usr/bin/ruby

H = Hash["a" => 100, "b" => 200, [1,"jan"] => "January"]

puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H[0]}"
# Use an array as an key
puts "#{H[[1,"jan"]]}"

$, = ", "
months = Hash.new( "month" )
puts months[0]

months = {"1" => "January", "2" => "February"}

keys = months.keys
puts "#{keys}"


test = { 0 => 1 , 1 => 10, "foo" => "bar"}
puts test[1]
puts test["foo"]

test.each { |key,value| puts "key: #{key} - Value: #{value}" }


a = { a: 1, b: 2, c: 3}
puts a.to_s
puts a[:c]

a.each { |k,v| a.delete(k) if v > 2 }
puts a.to_s