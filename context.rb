#!/usr/bin/ruby -w

class Document
    attr_accessor :title, :author, :content

    def initialize(title, author, content = '')
        @title = title
        @author = author
        @content = content
        #yield( self ) if block_given?
    end

    # Most of the class omitted...
    def on_save( &block )
        @save_listener = block
    end
    def on_load( &block )
        @load_listener = block
    end
    def load( path )
        @content = File.read( path )
        @load_listener.call( self, path ) if @load_listener
    end
    def save( path )
        File.open( path, 'w' ) { |f| f.print( @content ) }
        @save_listener.call( self, path ) if @save_listener
    end
end

def my_map(array)
new_array = []

for element in array
  new_array.push yield element
end

new_array
end

my_map([1, 2, 3]) do |number|
    number * 2
end

my_doc = Document.new( 'Block Based Example', 'russ', 'This is a new content' )
my_doc.on_load do |doc|
  puts "Hey, I've been loaded!"
end
my_doc.on_save do |doc|
  puts "Hey, I've been saved!"
end

my_doc.load("test.txt");
my_doc.save("test2.txt");


test {puts "this is my tests"}
