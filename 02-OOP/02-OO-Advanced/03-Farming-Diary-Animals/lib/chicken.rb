require_relative 'animal'

class Chicken < Animal
  attr_reader :eggs

  attr_accessor :gender

  def initialize(gender)
    super()
    @eggs = 0
    @gender = gender
  end

  def feed!
    super()
    @gender == "female" ? @eggs += 2 : @eggs = 0
  end

  def talk
    case @gender
    when @gender = 'male'
      "cock-a-doodle-doo"
    when @gender = 'female'
      "cluck cluck"
    end
  end
end
