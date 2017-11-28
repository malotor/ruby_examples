#!/usr/bin/ruby

# begin
#    file = open("/unexistant_file")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#       file = STDIN
# end
# print file, "==", STDIN, "\n"


begin
   puts 'I am before the raise.'
   raise 'An error has occurred.'
   puts 'I am after the raise.'
rescue Exception => e
   puts 'I am rescued.'
   puts e.message
   puts e.backtrace.inspect
ensure
   puts "Ensuring execution"
end
puts 'I am after the begin block.'


begin
   # raise 'A test exception.'
   puts "I'm not raising exception"
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
else
   puts "Congratulations-- no errors!"
ensure
   puts "Ensuring execution"
end


# begin
#    file = open("/unexistant_file")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#    fname = "existant_file.txt"
#    retry
# end


class FileSaveError < StandardError
   attr_reader :reason
   def initialize(reason)
      @reason = reason
   end
end

File.open("README.md", "w") do |file|
   begin
      # Write out the data ...
     raise "An error"
   rescue
      # Something went wrong!
      raise FileSaveError.new($!)
   end
end