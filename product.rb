


# Gets the details of the product from shopkeeper.
def get_product_details

	print "    Enter the product ID  :"
	@product_id= gets.strip.to_i 
				#print product_code
				print "    Enter the product NAME  :"
				@product_name= gets.strip 
				#print product_name
				print "    Enter the product PRICE :"
				@product_price= gets.strip.to_i 
				#print product_price
				print "    Enter the product QUANTITY :"
				@product_quantity= gets.strip.to_i 
				#print product_quantity		
				print "    Enter the product COMPANY :"
				@product_company= gets.strip 
				#print product_quantity	
end

#This method writes  new items to the stock.
def write_product(product_name,product_id,product_price,product_quantity,product_company)
	File.open("inventory.txt", "a") do |inventory_file|
					
	inventory_file.puts("#{@product_id}^#{@product_name}^#{@product_price}" +
						"^#{@product_quantity}^#{@product_company}")
	inventory_file.close
	end
end



#This method reads and displays the all items available in the stock.
def read_products_stock

	arr = IO.readlines("inventory.txt")
	len=0,i=0;
	len=arr.length

	while i != len  do

		temp = arr[i].split("^")
		
		puts "\n---------------------------------"
		puts "Product Id       :#{temp[0]}"
		puts "Product Name     :#{temp[1]}"
		puts "Product Price    :#{temp[2]}"
		puts "Product Quantity :#{temp[3]}"
		puts "Product Company  :#{temp[4]}"
		puts "---------------------------------"
		i +=1
	end
end


#  This methods searches for the product by id.
def search_product_by_id(product_id)

	arr = IO.readlines("inventory.txt")
	len=0,i=0;
	len=arr.length

	while i != len  do

		temp = arr[i].split("^")

		if temp[0] == product_id
			puts "\n---------------------------------"
			puts "Product Id       :#{temp[0]}"
			puts "Product Name     :#{temp[1]}"
			puts "Product Price    :#{temp[2]}"
			puts "Product Quantity :#{temp[3]}"
			puts "Product Company  :#{temp[4]}"
			puts "---------------------------------"
		end

		i +=1
	end

end


#  This methods searches for the product by name.
def search_product_by_name(product_name)

	print "\nThe search result by NAME is/are:"
	arr = IO.readlines("inventory.txt")
	len=0,i=0;
	len=arr.length

	while i != len  do
		temp = arr[i].split("^")

		if temp[1] == product_name
			puts "\n---------------------------------"
			puts "Product Id       :#{temp[0]}"
			puts "Product Name     :#{temp[1]}"
			puts "Product Price    :#{temp[2]}"
			puts "Product Quantity :#{temp[3]}"
			puts "Product Company  :#{temp[4]}"
			puts "---------------------------------"
		end
		i +=1
	end

end




def remove_product(product_id)
	puts "In remove"
	
	arr = IO.readlines("inventory.txt")
	len=0,i=0;
	len=arr.length

	while i != len  do
		temp = arr[i].split("^")
		#puts temp[0]

		File.open("tempfile.txt", "a") do |tempfile|	
			if product_id.to_i != temp[0].to_i
				tempfile.puts(arr[i])
			end
		end

		i=i+1;
	end

	FileUtils.mv("tempfile.txt", "inventory.txt")
end




# Shows the details of the product to the shopkeeper
=begin

def show_product(product_name,product_id,product_price,product_quantity)
		puts "\n The product details are :"		
		puts "Product Code     : #{@product_id}"
		puts "Product Name     : #{@product_name}"
		puts "Product Price    : #{@product_price}"
		puts "Product Quantity : #{@product_quantity}"

end

=end
