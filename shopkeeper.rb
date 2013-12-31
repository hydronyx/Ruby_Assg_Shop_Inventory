
def shopkeepers_view

		print "\n Select the Operation to perform :"
		print "\n 1. Display current stock : " 
		print "\n 2. Add an item           : " 
		print "\n 3. Modify the stock      : " 
		print "\n 4. Delete an item        : "
		print "\n 6. Display product report: "
		operation_no = gets.strip.to_i

		if operation_no.between?(1,6)
			puts "good"
		else 
			puts " Wrong Operation"
			redo
		end

end



