class MealsView
  def display_meals(meal_repository)
    meal_repository.all.each do |meal|
      puts "id : #{meal.id} - #{meal.name}"
    end
  end

  def ask_user_for_meal_name
    puts "What is the name of the meal you want to add?"
    puts "> "
    gets.chomp
  end

  def ask_user_for_meal_price
    puts "What is the price of the meal you want to add?"
    puts "> "
    gets.chomp.to_i
  end

  def ask_user_for_meal_number_to_edit
    puts "What is the id of the meal you want to edit?"
    puts "> "
    gets.chomp.to_i
  end

  def ask_user_for_meal_number_to_destroy
    puts "What is the id of the meal you want to destroy?"
    puts "> "
    gets.chomp.to_i
  end
end
