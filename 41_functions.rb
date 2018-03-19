def my_function (bar: "default", foo: "hello")
  puts "This is bar -> #{bar} --- This is foo -> #{foo} "
end

def my_other_function (fur:)
  puts "This is fur -> #{fur} "
end


my_function
my_function bar: "hello"
my_function foo: "hello"
my_function foo: "world", bar: "hello"

my_other_function fur: "hello world"