#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'recipe'
require_relative 'view'
require 'nokogiri'
require 'open-uri'

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
    ingredient = @view.ask_user_for_ingredient_request
    nokogiri_import(ingredient)
    recipe_index = @view.ask_user_to_select_recipe_to_import
    name = ingredient
    description = recipe_index
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  private

  def nokogiri_import(ingredient)
    url = "https://www.allrecipes.com/search?q=#{ingredient}"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML.parse(html_file)
    puts "Voici des recettes pour #{ingredient}"
    html_doc.search(".card__title-text").each_with_index do |element, i|
      puts "#{i + 1}. #{element.text.strip}" if i < 5
    end
  end

  def recipe_select(recipe_index)

  end
end
