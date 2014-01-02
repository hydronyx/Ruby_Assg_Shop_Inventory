#Assignment 3 : OOPS CONCEPTS - RUBY

require 'fileutils'

require_relative 'shopkeeper.rb'
require_relative 'customer.rb'
require_relative 'product.rb'

puts "\n:: SHOP INVENTORY MANAGEMENT SYSTEM ::"

puts "\nAre you a Customer or a Shopkeeper? "
puts "   1.For Shopkeeper \n   2.For Customer\n\n"

print 'Enter user type : '
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




	#show_product(@product_code,@product_name,@product_price,@product_quantity)
	
	



