# TODO: Implement the Cookbook class that will be our repository
require 'open-uri'
require 'nokogiri'
require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    save_csv
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row) do |row|
      recipe = Recipe.new(row[0], row[1])
      @recipes << recipe
    end
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["name", "description"]
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

def import(recipe)

end
end
