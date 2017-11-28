#!/usr/bin/ruby -w

require "dbi"

begin
  # connect to the MySQL server
  dbh = DBI.connect("DBI:Mysql:db_udemy:localhost", "root", "example")
  # get server version string and display it
  row = dbh.select_one("SELECT * FROM course")
  puts "Server version: " + row
rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"
ensure
  # disconnect from server
  dbh.disconnect if dbh
end