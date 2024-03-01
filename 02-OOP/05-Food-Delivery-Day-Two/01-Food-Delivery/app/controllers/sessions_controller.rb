require_relative '../repositories/employee_repository'
require_relative '../views/employees_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = EmployeesView.new
  end

  def input_identification
    username = @view.ask_employee_for_username
    password = @view.ask_employee_for_password
  end
end
