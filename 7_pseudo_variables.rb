#!/usr/bin/ruby

$global_variable = 10
class Class1
   def print_info
      puts self
   end
end

class1obj = Class1.new
class1obj.print_info
puts __FILE__
puts __LINE__
