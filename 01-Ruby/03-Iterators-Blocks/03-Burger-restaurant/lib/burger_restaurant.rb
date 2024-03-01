def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  new_patty = block_given? ? yield(patty) : patty
  return ["bread", new_patty, sauce, topping, "bread"]
end
