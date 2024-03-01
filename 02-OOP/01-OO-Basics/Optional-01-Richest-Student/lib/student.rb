class Student
  include Comparable

  attr_reader :name, :wealth_sum


  def initialize(name, five, ten, twenty)
    @name = name
    @five = five
    @ten = ten
    @twenty = twenty
    @wealth_sum = (@five * 5) + (@ten * 10) + (@twenty * 20)
  end

  def wealth
    @wealth_sum
  end

  def <=>(other)
    wealth <=> other.wealth
  end
end
