class CustomersView
  def display_customers(customer_repository)
    customer_repository.all.each do |customer|
      puts "id = #{customer.id} - name = #{customer.name}"
    end
  end

  def ask_customer_name_to_add
    puts ' What is the name of the customer?'
    puts '> '
    gets.chomp
  end

  def ask_customer_address_to_add
    puts 'What is the address of the customer?'
    puts '> '
    gets.chomp
  end

  def ask_customer_id_to_destroy
    puts ' What is the id of the customer you want to destroy?'
    puts '> '
    gets.chomp
  end

  def ask_customer_id_to_edit
    puts ' What is the address of the customer you want to edit?'
    puts '> '
    gets.chomp
  end
end
