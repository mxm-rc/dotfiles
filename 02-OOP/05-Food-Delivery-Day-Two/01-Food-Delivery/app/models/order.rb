class Order
attr_accessor :id

  def initialize (attributes = {})
    @id = attributes[:id]
    @meal = attributes[:meal]
    @customer = attributes[:customer]
    @employee = attributes[:employee]
    @delivered = attributes[:delivered]
end

  def delivered?
    delivered == true
  end

end