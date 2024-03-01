def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if min > max
    return -1
  else
    total = 0
    for i in min..max do
      total += i
    end
  end

  return total
end

def sum_with_while(min, max)
  if min > max
    return -1
  else
    total = 0
    while min <= max
      total += min
      min = min + 1
    end
  end

  return total
end

p sum_with_while(7, 42)
p sum_with_while(1, 100)
