class Meal
  attr_accessor :id, :name, :price

  def initialize(attributes = {})
    raise StandardError, "No related Author ID" if @id.empty?

    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end
