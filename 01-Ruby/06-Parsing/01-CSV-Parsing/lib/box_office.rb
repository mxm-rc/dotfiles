require 'csv'
require 'date'

def most_successful(number, max_year, file_path = "lib/movies.csv")
  # TODO: return an array of most successful movies before `max_year`
  array = []
  CSV.foreach(file_path) do |row|
    row[1].to_i < max_year ? array += [:earnings => row[2].to_i, :name => row[0], :year => row[1].to_i] : next
  end
  return array.sort_by { |movie| -movie[:earnings] }.first(number)
end
