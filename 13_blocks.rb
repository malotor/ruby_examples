#!/usr/bin/ruby
def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end

test {puts "You are in the block"}

puts "************"

def test2
   yield 5
   puts "You are in the method test"
   yield 100
end
test2 {|i| puts "You are in the block #{i}"}

test2 do |i|
    puts "You are in the block #{i}"
    puts "Multiline"
end

# yield execeutes block and pass parameters
puts "************"

def test3
   yield 10,100
   puts "You are in the method test"
   yield 20,200
end

test3 {|a, b| puts "You are in the block #{a},#{b} "}


def test4(&block)
   block.call
end
test4 { puts "Hello World!"}


def test5(foo: "Hello", bar: "World")
   puts "#{foo} #{bar}"
   yield 10,100
   puts "You are in the method test"
   yield 20,200
end

test5(foo: "Hi", bar: "Manel") {|a, b| puts "You are in the block #{a},#{b} "}

test5(bar: "Manel") {|a, b| puts "You are in the block #{a},#{b} "}
