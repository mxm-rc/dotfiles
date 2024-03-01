require_relative '../models/customer'
require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def add
    customer_name = @view.ask_customer_name_to_add
    customer_address = @view.ask_customer_address_to_add
    customer = Customer.new(name: customer_name, address: customer_address)
    @customer_repository.create(customer)
  end

  def list
    @view.display_customers(@customer_repository)
  end

  def edit
    list
    customer_id = @view.ask_customer_id_to_edit
    customer_name = @view.ask_customer_name_to_add
    customer_address = @view.ask_customer_address_to_add
    @customer_repository[customer_id] = [name: customer_name, address: customer_address]
    save_csv
  end

  def delete
    list
    customer_id = @view.ask_customer_id_to_destroy
    @customer_repository = @customer_repository.reject { |customer| customer.id == customer_id }
    save_csv
  end
end
