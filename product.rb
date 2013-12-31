# Gets the details of the product from shopkeeper.

def getdata
		
		print " Enter the product NAME  :"
		@product_name= gets.strip 
				#print product_name
		print " Enter the product CODE  :"
		@product_code= gets.strip.to_i 
				#print product_code
		print " Enter the product PRICE :"
		@product_price= gets.strip.to_i 
				#print product_price
		print " Enter the product QUANTITY :"
		@product_quantity= gets.strip.to_i 
				#print product_quantity		
end



# Shows the details of the product to the shopkeeper

def showdata(product_name,product_code,product_price,product_quantity)
		puts "\n The product details are :"
		puts "Product Name     : #{product_name}"
		puts "Product Code     : #{product_code}"
		puts "Product Price    : #{product_price}"
		puts "Product Quantity : #{product_quantity}"

end