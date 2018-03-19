#!/usr/bin/ruby

$global_variable = 10
class Class1
   def print_global
       var1 = 100
      puts "Global variable in Class1 is #{$global_variable}"
      puts "Local variable in Class1 is #{var1}"
   end
end
class Class2
   def print_global
      var1 = 200
      puts "Global variable in Class2 is #{$global_variable}"
      puts "Local variable in Class1 is #{var1}"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
