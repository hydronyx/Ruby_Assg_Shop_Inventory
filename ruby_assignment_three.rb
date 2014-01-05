#Assignment 3 : OOPS CONCEPTS - RUBY

require 'fileutils'
require_relative 'shopkeeper.rb'
require_relative 'customer.rb'


	customer_instance = CustomerDetails.new
	shopkeeper_instance = ShopkeeperDetails.new

	loop do

		puts "\n:: SHOP INVENTORY MANAGEMENT SYSTEM ::"

		puts "\nAre you a Customer or a Shopkeeper? "
		puts "   1.For Shopkeeper \n   2.For Customer\n   7.Exit\n\n"

		print 'Enter user type : '
		user_type = gets.strip.to_i

		case user_type

		when 1
			puts "Hi Shopkeeper\n"	
			shopkeeper_instance.shopkeepers_view

		when 2
			puts "Hi Customer\n"
			customer_instance.customers_view

		when 7
			exit

		else
			puts "Wrong Operation"			
		end

	end





	#show_product(@product_code,@product_name,@product_price,@product_quantity)
	
	



