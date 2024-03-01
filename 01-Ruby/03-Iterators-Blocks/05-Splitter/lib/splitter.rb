def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  size_array = []
  size_array << array.sort.select { |n| n.length == size }
  size_array << array.sort.reject { |n| n.length == size }
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  array_one = []
  array_two = []
  array.select do |string|
    if yield(string)
      array_one << string
    else
      array_two << string
    end
  end
  [array_one, array_two]
end
