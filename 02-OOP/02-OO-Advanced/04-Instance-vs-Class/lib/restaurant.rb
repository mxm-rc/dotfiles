class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :ratings_number, :average_rating, :ratings_total, :name, :array

  attr_reader :city

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @ratings = 0
    @ratings_number = 0
    @ratings_total = 0
  end

  # TODO: implement .filter_by_city and #rate methods

  def self.filter_by_city(array, location)
    new_array = []
    p "#{new_array} nouvel array"
    array.each do |i|
      new_array << i if i.city == location
    end
    new_array
  end

  def rate(new_rate)
    @ratings_number += 1
    @ratings_total += new_rate
    @average_rating = @ratings_total / @ratings_number
  end
end
