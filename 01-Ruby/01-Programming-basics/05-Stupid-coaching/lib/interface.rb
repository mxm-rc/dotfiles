require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Qu'as tu à me dire"
user_input = gets.chomp
puts coach_answer_enhanced(user_input)
