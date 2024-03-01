require 'csv'
require_relative '../models/meal'
require_relative 'base_repository'

class MealRepository < BaseRepository
  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:name]
      row[:price] = row[:price].to_i
      @elements << Meal.new(row)
    end
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ['id', 'name', 'price']
      @elements.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
