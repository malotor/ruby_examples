#!/usr/bin/ruby -w

puts "1. Parallel assignment"

a , b , c = 1, 2, 3

puts a
puts b
puts c

puts "2. Ternary operator"
a = 10
(1..10).each do |n|
    puts n > 5 ? "+5" : "-5"
end

puts "3. Defined"

foo = 42
puts defined? foo    # => "local-variable"
puts defined? $_     # => "global-variable"
puts defined? bar    # => nil (undefined)

puts defined? puts        # => "method"
puts defined? puts(bar)   # => nil (bar is not defined here)
puts defined? unpack      # => nil (not defined here)


puts "4. Dot and Double Colon"

MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant
