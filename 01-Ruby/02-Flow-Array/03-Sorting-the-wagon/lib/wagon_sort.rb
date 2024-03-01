def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  for i in 0..3 do
    if students[i] == ''
      students[i] = nil
    end
  end
  return students.compact.sort_by(&:downcase)
end
