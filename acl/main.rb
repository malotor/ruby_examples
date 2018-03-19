#!/usr/bin/ruby -w
require_relative 'credit_card'

a_credit_card = CreditCard.new("numbre","holder","expiration")

puts a_credit_card.number
