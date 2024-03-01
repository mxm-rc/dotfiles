#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    cookbook = @cookbook.all
    @view.display_list(cookbook)
  end

  def add
    name = @view.ask_user_for_name
    description = @view.ask_user_for_description
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  def remove
    recipe_index = @view.ask_user_for_recipe_id
    @cookbook.destroy(recipe_index)
  end

  def import
    @cookbook.import(ingredient)
  end
end
