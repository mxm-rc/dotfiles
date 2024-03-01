class Router
  def initialize(meals_controller, customers_controller, employee_controller)
    @customers_controller = customers_controller
    @meals_controller = meals_controller
    @employee_controller = employee_controller
    @running = true
  end

  def run
    while @running
      print_menu
      choice = gets.chomp.to_i
      print `clear`
      user_type(choice)
    end
  end

  private

  def print_usertype_menu
    puts "--------------------"
    puts "---USER TYPE MENU---"
    puts "--------------------"
    puts "1. Customer"
    puts "2. Employee"
  end

  def print_customer_menu
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "8. Exit"
    print "> "
  end


  def print_employee_menu
  end

  def user_type(choice)
    case choice
    when 1 then route_employee_action(choice)
    when 2 then route_customer_action(choice)
    else puts "Try again..."
    end
  end

  def route_employee_action
    @employee_controller
  end

  def route_customer_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 8 then stop!
    else puts "Try again..."
    end
  end

  def stop!
    @running = false
  end
end
