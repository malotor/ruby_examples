#!/usr/bin/ruby

$age =  5
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

title = 'War And Peace'

author = case title
         when 'War And Peace' then 'Tolstoy'
         when 'Romeo And Juliet' then  'Shakespeare'
         else "Don't know"
         end


class Document
end

doc = Document.new

case doc
when Document
  puts "It's a document!"
when String
  puts "It's a string!"
else
  puts "Don't know what it is!"
end
