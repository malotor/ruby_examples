#!/usr/bin/ruby

# Fixed size arrays
names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20

# Dynamic size arrays
surnames = Array.new
puts surnames.size  # This returns 20
puts surnames.length # This also returns 20

# Autofill an array
names = Array.new(4, "manel")
puts "#{names}"



# Autofill an array with block
nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"


nums = Array.new(10) do |e|
    e = e * 3
end
puts "#{nums}"

# Autofill an array with range
nums = Array(1..10)
puts "#{nums}"


# Autofill an fixed values
nums = Array[1,2,3]
puts "#{nums}"


# Get element at position

# Autofill an array with range
nums = Array(1..10)
num = nums.at(6)
puts "#{num}"


a = [ 1, 2, 3, "hello", "world" , [ "other", "array"]]

puts a[0]
puts a[5][0]

puts a.include?"hello"
puts a[0]

puts a.reverse!
puts a[1]

# Add
a << 20
puts a[ a.length - 1 ]

a.push("foo")


a.unshift "My name"

puts a.pop

b = (1..50).to_a
filtered = b.select {|i| i.odd? }
puts filtered.to_s