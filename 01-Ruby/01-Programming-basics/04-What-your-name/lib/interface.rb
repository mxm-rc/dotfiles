require_relative "compute_name"

# TODO: ask for the first name
puts "Prénom ?"
first_name = gets.chomp

# TODO: ask for the middle name
puts "2nd nom ?"
middle_name = gets.chomp

# TODO: ask for the last name
puts "Nom de famille ?"
last_name = gets.chomp
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

puts "Hello, #{compute_name(first_name, middle_name, last_name)}"
