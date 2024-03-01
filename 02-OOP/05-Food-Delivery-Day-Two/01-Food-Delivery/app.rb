# Bootstrap

require 'csv'
require_relative 'app/repositories/customer_repository'
require_relative 'app/repositories/employee_repository'
# require_relative 'app/repositories/order_repository'
require_relative 'app/repositories/meal_repository'

require_relative 'app/controllers/customers_controller'
require_relative 'app/controllers/sessions_controller'
# require_relative 'app/controllers/orders_controller'
require_relative 'app/controllers/meals_controller'

require_relative 'app/views/employees_view'
require_relative 'app/views/customers_view'
require_relative 'app/views/meals_view'
require_relative 'app/views/orders_view'

require_relative 'router'

meal_repository = MealRepository.new('./unexisting_file.csv')
customer_repository = CustomerRepository.new('./data/customers.csv')
employee_repository = EmployeeRepository.new('./data/employees.csv')

# customers_view = CustomersView.new
# employees_views = EmployeesView.new
# meals_view = MealsView.new
# orders_view = OrdersView.new

meals_controller = MealsController.new(meal_repository)
customers_controller = CustomersController.new(customer_repository)
sessions_controller = SessionsController.new(employee_repository)
router = Router.new(meals_controller, customers_controller, sessions_controller)
router.run
