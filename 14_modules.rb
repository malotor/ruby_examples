#!/usr/bin/ruby

# Required for load modules
$LOAD_PATH << '.'

require 'mymodule'

module Debug
    def whoAmI?
        "#{self.class} #{self.to_s}"
        #{}"#{self.ty} (\##{self.id}): #{self.to_s}"
    end
end

class Foo
    include Debug
    def bar
        puts "BAR"
    end
end


x = MyModule.myfunc
puts x



c = Foo.new
puts c.bar
puts c.whoAmI?
