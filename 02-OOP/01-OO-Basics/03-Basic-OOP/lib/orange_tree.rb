class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_reader :age, :height, :fruits

  def initialize
    @age = 0
    @fruits = 0
    @height = 0
  end

  def one_year_passes!
    @age += 1
    grow!
    produce_fruits!
  end

  def dead?
    if may_die! == true || (100 - @age) < rand(1..50) || @age >= 100
      @dead = true
    else
      @dead = false
    end
  end

  def pick_a_fruit!
    if @fruits.positive? && (6...15).include?(@age)
      @fruits += - 1
    else
      @fruits = 0
    end
  end

  private

  def may_die!
    (51...100).include?(@age)
  end

  def produce_fruits!
    if (6...10).include?(@age)
      @fruits = 100
    elsif (10...15).include?(@age)
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def grow!
    @height += 1 if @age <= 10
  end
end
