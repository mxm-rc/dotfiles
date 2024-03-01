require_relative '../models/meal'
require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def add
    meal_name = @view.ask_user_for_meal_name
    meal_price = @view.ask_user_for_meal_price
    meal = Meal.new(name: meal_name, price: meal_price)
    @meal_repository.create(meal)
  end

  def list
    @view.display_meals(@meal_repository)
  end

  def edit
    list
    meal_id = @view.ask_user_for_meal_number_to_edit
    meal_name = @view.ask_user_for_meal_name
    meal_price = @view.ask_user_for_meal_price
    @meal_repository[meal_id] = { name: meal_name, price: meal_price }
    save_csv
  end

  def destroy
    list
    meal_id = @view.ask_user_for_meal_number_to_destroy
    @meal_repository = @meal_repository.reject { |meal| meal.id == meal_id }
    save_csv
  end
end
