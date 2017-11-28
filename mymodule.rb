#!/usr/bin/ruby

module MyModule

    A_VALUE = 10

    def MyModule.myfunc
        puts "This is my func in my module"
        result = A_VALUE
    end

end
