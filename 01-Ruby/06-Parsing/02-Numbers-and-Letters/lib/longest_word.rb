require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters

  # creation d'un hash qui contient une paire nombre - lettre
  letter_hash = {}
  random_letters = []
  ('A'..'Z').to_a.map.with_index do |letter, i|
    letter_hash[i] = letter
  end

  # creation d'une methode qui randomise l'extraction d'une lettre
  (1..grid_size).each do
    random_letters << letter_hash[rand(0..25)]
  end
  random_letters
end

def compute_score(end_time, start_time, attempt)
  time = end_time - start_time
  length_score = 1000 * attempt.length
  { :score => length_score + (1 / time), :message => "well done", :time => time }
end

def valid?(attempt, grid)
  attempt.chars.all? do |letter|
    grid.include?(letter.upcase)
    index = grid.find_index(letter.upcase)
    grid.delete_at(index) if index
  end
end

def run_game(attempt, grid, start_time, end_time)
  attempt_serialized = URI.open("https://wagon-dictionary.herokuapp.com/#{attempt}").read
  parsed_value = JSON.parse(attempt_serialized)["found"]
  if parsed_value && valid?(attempt, grid)
    result = compute_score(end_time, start_time, attempt)
  elsif parsed_value == false
    result = { :score => 0, :message => "not an english word", :time => 0 }
  elsif parsed_value && !valid?(attempt, grid)
    result = { :score => 0, :message => "not in the grid", :time => 0 }
  end
  result
end
