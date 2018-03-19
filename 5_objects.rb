#!/usr/bin/ruby -w
class Customer
   @@no_of_customers = 0

   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end

   def display_details
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end

   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end

  def self.identify_yourself
    puts "I am croot"
  end

end


class OnlineCustomer < Customer

end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

puts cust1.display_details
puts cust1.total_no_of_customers


puts cust2.display_details
puts cust2.total_no_of_customers

puts Customer.ancestors
puts Customer.identify_yourself