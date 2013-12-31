#Assignment 3 : OOPS CONCEPTS - RUBY

require_relative 'shopkeeper.rb'
require_relative 'customer.rb'
require_relative 'product.rb'

puts "Inventory Management System : SHOP \n"

puts "\n Are you a Customer or a Shopkeeper? "
puts "\n 1.For Shopkeeper \n 2.For Customer\n\n"

print 'User Type : '
	user_type = gets.strip.to_i

	
	if user_type==1
		puts "Hi Shopkeeper\n"	
		shopkeepers_view
	elsif  user_type==2	
		puts "Hi Customer\n"
		customers_view
	else
		puts "Wrong Operation"
	    exit			
	end


	getdata
	showdata(@product_name,@product_code,@product_price,@product_quantity)
 
