def circle_area(radius)
  # TODO: Implement the `circle_area` method
  result = 3.14 * radius * radius
  if radius.positive?
    return result
  else
    return 0
  end
end
