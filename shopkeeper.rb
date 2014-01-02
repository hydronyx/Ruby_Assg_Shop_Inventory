


def shopkeepers_view

  loop do
    print "\n=========================================="
    print "\n Select the Operation to perform \n"
    print "\n   1. Display current stock : " 
    print "\n   2. Add an item           : " 
    print "\n   3. Modify the stock      : " 
    print "\n   4. Delete an item        : "
    print "\n   5. Search Product        : "
    print "\n   6. Display product report: "
    print "\n   7. To Exit \n"
    print "\n========================================== \n" 
    print "\n\n  Enter your choice :"
    operation_no = gets.to_i
    print("\n")


    case operation_no

      when 1
        puts "\nDisplaying current stock : " 
        read_products_stock

      when 2 
        puts "\nAdd New stock : "
        get_product_details
        write_product(@product_code,@product_name,@product_price,@product_quantity,@product_company)

      when 5

        print "Enter the product product code to search :"
        product_to_search = gets.strip
        search_product_by_id(product_to_search)

        print "Enter the product product name to search :"
        product_to_search = gets.strip
        search_product_by_name(product_to_search)



      when 7
       exit

      else
        print "\n\n Invalid Operation "
        print "\n Enter your choice again:\n\n "
    end

  end
end



