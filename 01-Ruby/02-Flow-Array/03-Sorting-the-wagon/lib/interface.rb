require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp

students_array = Array.new(4)
puts "Type a student name:"
students_array[0] = gets.chomp
for i in 1..3 do
  puts "Type another student name or press enter to finish:"
  students_array[i] = gets.chomp
  end
if wagon_sort(students_array).size == 1
  puts "Congratulations! Your Wagon has 1 student"
else
  puts "Congratulations! Your Wagon has #{wagon_sort(students_array).size} students"
end


string = wagon_sort(students_array)[0]

if wagon_sort(students_array).size == 1
  puts string
else
  for i in 1..wagon_sort(students_array).size - 2
    string << ", #{wagon_sort(students_array)[i]}"
    puts string
  end
  puts "#{string} and #{wagon_sort(students_array).pop}"
end
